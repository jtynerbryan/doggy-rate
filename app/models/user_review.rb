class UserReview < ApplicationRecord
	belongs_to :reviewer, 
		class_name: 'User'
	belongs_to :reviewee,
		class_name: 'User'

	validates :content, presence: true
end
