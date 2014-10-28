class Store < ActiveRecord::Base
	has_many :products
	validates :location, presence: true
end
