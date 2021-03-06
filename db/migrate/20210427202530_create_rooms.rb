class CreateRooms < ActiveRecord::Migration[5.1]
  def change
    create_table :rooms do |t|
      t.string :name
      t.references :user, foreign_key: true
      t.boolean :open
      t.string :password

      t.timestamps
    end
  end
end
