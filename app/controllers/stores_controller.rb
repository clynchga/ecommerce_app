class StoresController < ApplicationController

def index
	@stores = Store.all
end

def show
	@store = Store.find(params[:id])
end

def new
	@store = Store.new
end

 def create
   @store = Store.new(store_params)

   respond_to do |format|
     if @store.save
       format.html { redirect_to "/stores", notice: 'Store was successfully created.' }
       format.json { render :show, status: :created, location: @store }
     else
       format.html { render :new }
       format.json { render json: @store.errors, status: :unprocessable_entity }
     end
   end
 end

 private
 def store_params
 	params.require(:store).permit(:location)
 end

end