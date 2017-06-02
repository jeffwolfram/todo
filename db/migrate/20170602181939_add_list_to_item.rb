class AddListToItem < ActiveRecord::Migration[5.1]
  def change
    add_column :items, :List_id, :integer
    add_index :items, :List_id
  end
end
