class CreateStores < ActiveRecord::Migration
  def change
    create_table :stores do |t|
      t.text :location

      t.timestamps
    end
  end
end