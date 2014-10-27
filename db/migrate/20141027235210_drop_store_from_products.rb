class DropStoreFromProducts < ActiveRecord::Migration
  def change
  	remove_column :products, :store, :integer
  end
end
