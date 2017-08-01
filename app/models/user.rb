class User < ApplicationRecord
	has_secure_password
	has_many :dogs
	has_many :dog_reviews
	

	has_many :reviews_as_reviewer, class_name: "UserReview"
	has_many :reviews_as_reviewee, class_name: "UserReview"
end
