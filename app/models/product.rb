class Product < ActiveRecord::Base
	attr_accessible :title, :description, :price, :store
	belongs_to :store
	validates :title, presence: true
	validates :description, presence: true
	validates :price, presence: true
end
