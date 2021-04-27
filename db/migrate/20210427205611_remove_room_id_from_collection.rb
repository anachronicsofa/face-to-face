class RemoveRoomIdFromCollection < ActiveRecord::Migration[5.1]
  def change
    remove_reference :collections, :room, index:true, foreign_key: true
    add_reference :rooms, :collection, index:true, foreign_key: true 
  end
end
