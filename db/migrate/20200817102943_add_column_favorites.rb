class AddColumnFavorites < ActiveRecord::Migration[5.2]
  def change
    add_index :favorites, :user_id
    add_index :favorites, :picture_id
    add_index :favorites, [:user_id, :picture_id], unique: true
  end
end
