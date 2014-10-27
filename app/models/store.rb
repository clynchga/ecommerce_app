class Store < ActiveRecord::Base
	has_many :products
	attr_accessible :location
	validates :location, presence: true
end
