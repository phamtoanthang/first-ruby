class Post < ActiveRecord::Base
	is_impressionable
	acts_as_taggable_on :tags
	def self.search(search)
  		where("title LIKE ?", "%#{search}%") 
	end
end
