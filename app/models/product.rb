class Product < ActiveRecord::Base
	belongs_to :store
	validates :title, presence: true
	validates :description, presence: true
	validates :price, presence: true
end
