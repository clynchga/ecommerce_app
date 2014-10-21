class StoresController < ApplicationController

def index
	@stores = Store.all
end

def find
	# find the store object based on the store id
	@store = Store.find(params[:id])
	# find all products associated with the store
	@products = Product.all
end

end