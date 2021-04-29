class AddImageToFaces < ActiveRecord::Migration[5.1]
  def change
    add_column :faces, :image, :string
  end
end
