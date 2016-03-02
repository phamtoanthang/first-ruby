class Post < ActiveRecord::Base
	is_impressionable
	acts_as_taggable_on :tags
	def self.search(search)
  		where("title LIKE ?", "%#{search}%") 
	end
	# If you delete an article, its associated comments will also need to be deleted, otherwise they would simply occupy space in the database. Rails allows you to use the dependent option of an association to achieve this
	has_many :comments, dependent: :destroy
	validates :title, presence: true, length: { minimum: 5 }
end
