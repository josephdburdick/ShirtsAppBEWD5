class SearchController < ApplicationController
  def index
  	#fail




  	# take the value of q

  	query = params[:q] # "query" is not a special reserved word
  	@shirts = Shirt.search_for query

  	#@shirts = Shirt.where('name LIKE :query OR description LIKE :query', query: "%#{query}%") #prevents SQL injection

  	# search for shirt by name and description by q
  	# show the results to the user

  end
end
