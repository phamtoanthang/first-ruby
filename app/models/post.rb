class Post < ActiveRecord::Base
	is_impressionable
	def self.search(search)
  		where("title LIKE ?", "%#{search}%") 
	end
end
