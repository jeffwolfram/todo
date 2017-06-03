class AddListToItems < ActiveRecord::Migration[5.1]
  def change
    add_column :items, :done, :boolean
  end
end
