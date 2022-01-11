class AddIndexToTable < ActiveRecord::Migration[6.1]
  def change
    add_index :items, :category_id
    add_index :orders, :user_id
    add_index :orders, :item_id  
  end
end
