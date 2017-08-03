class Dog < ApplicationRecord
	belongs_to :user
	has_many :dog_reviews
	has_one :picture

	validates :name, :breed, :picture, presence: true

	def recent_reviews
		self.dog_reviews.sort_by{|review| review.created_at}.reverse[0..4]
	end
end
