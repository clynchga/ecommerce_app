class Product < ActiveRecord::Base
	attr_accessible :title, :description, :price, :store
	belongs_to :store
end
