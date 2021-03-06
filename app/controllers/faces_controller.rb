class FacesController < ApplicationController
  before_action :set_face, only: %i[ show edit update destroy ]

  # GET /faces or /faces.json
  def index
    @faces = Face.all
  end

  # GET /faces/1 or /faces/1.json
  def show
  end

  # GET /faces/new
  def new
    @face = Face.new
  end

  # GET /faces/1/edit
  def edit
  end

  # POST /faces or /faces.json
  def create
    @face = Face.new(face_params)

    respond_to do |format|
      if @face.save
        format.html { redirect_to collection_path(@face.collection), notice: "Face was successfully created." }
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /faces/1 or /faces/1.json
  def update
    respond_to do |format|
      if @face.update(face_params)
        format.html { redirect_to @face, notice: "Face was successfully updated." }
        format.json { render :show, status: :ok, location: @face }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @face.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /faces/1 or /faces/1.json
  def destroy
    @face.destroy
    respond_to do |format|
      format.html { redirect_to faces_url, notice: "Face was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_face
      @face = Face.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def face_params
      params.require(:face).permit(:name, :collection_id, :image)
    end
end
