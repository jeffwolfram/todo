class CreateItems < ActiveRecord::Migration[5.1]
  def change
    create_table :items do |t|
      t.string :body
      t.boolean :finished

      t.timestamps
    end
  end
end
