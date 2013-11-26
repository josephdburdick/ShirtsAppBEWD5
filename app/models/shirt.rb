class Shirt < ActiveRecord::Base
	def self.search_for(query)
		where('name LIKE :query OR description LIKE :query', query: "%#{query}%") #prevents SQL injection

		#In this example, "self" is the class "Shirt"
	end
end
