class User < ApplicationRecord
	has_secure_password
	has_many :dogs
	has_many :dog_reviews
	has_many :reviews_as_reviewer, foreign_key: "reviewer_id", class_name: "UserReview"
	has_many :reviews_as_reviewee, foreign_key: "reviewee_id", class_name: "UserReview"

	validates :name, :email, :password, presence: true
	validates :name, uniqueness: true
	#validates_email_format_of :email, :message => 'Please enter a valid email address'

	def recent_reviews
		self.reviews_as_reviewee.sort_by{|review| review.created_at}.reverse[0..4]
	end

	def negative_reviews_as_reviewee_count
		self.reviews_as_reviewee.select {|review| review.mean == true }.count
	end

	def reviewed?(dog)
  		self.dog_reviews.any? {|review| review.dog == dog} 
  	end


end
