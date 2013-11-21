class ShirtsController < ApplicationController
  def index
  	@shirts = Shirt.all    #Shirt is the database of shirt
  end
end
