class ProductsController < ApplicationController

before_filter :load_store

def show
	@product = Product.find(params[:id])
end

def index
	@products = @store.products.all
end

def new 
	@product = @store.product.new
end

def create
	@product = @store.product.new

	respond_to do |format|
		if @product.save
       		format.html { redirect_to @product, notice: 'Product was successfully created.' }
       		format.json { render :show, status: :created, location: @product }
		else
      	 	format.html { render :new }
       		format.json { render json: @product.errors, status: :unprocessable_entity }
		end
	end
end

private 
def load_store
	@store = Store.find(params[:store_id])
end

 private
 def product_params
 	params.require(:product).permit(:title, :description, :price)
 end


end