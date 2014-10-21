class ProductsController < ApplicationController

def find
	@product = Product.find(params[:id])
end

end