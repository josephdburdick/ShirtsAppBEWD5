class ShirtsController < ApplicationController
  def index
  	@shirts = Shirt.all    #Shirt is the database of shirt
  end

  def new
  	@shirt = Shirt.new
  end

  def create
  	safe_shirt = params.require(:shirt).permit(:name, :description, :image) #have to have a key called shirt, permit only 
  	shirt = Shirt.create safe_shirt
  	redirect_to shirt
  end

  def show
  	@shirt = Shirt.find params[:id]
  end

  def edit 
  	@shirt = Shirt.find params[:id]  #this time the object will be filled out by the database
  end

  def update
	@shirt = Shirt.find params[:id]
  	safe_shirt = params.require(:shirt).permit(:name, :description, :image) #have to have a key called shirt, permit only 
  	@shirt.update safe_shirt
  	redirect_to @shirt
  end
end
