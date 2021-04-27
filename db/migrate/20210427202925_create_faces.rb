class CreateFaces < ActiveRecord::Migration[5.1]
  def change
    create_table :faces do |t|
      t.string :name
      t.references :collection, foreign_key: true

      t.timestamps
    end
  end
end
