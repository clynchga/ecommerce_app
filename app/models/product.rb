class Product < ActiveRecord::Base
	belongs_to :store
	validates :title, presence: true
	validates :description, length: {minimum: 10}
	validates :price, numericality: {greater_than: 0}
end
