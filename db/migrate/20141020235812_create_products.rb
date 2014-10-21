class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.text :title
      t.text :description
      t.float :price
      t.integer :store

      t.timestamps
    end
  end
end
