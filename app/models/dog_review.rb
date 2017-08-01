class DogReview < ApplicationRecord
  belongs_to :user
  belongs_to :dog

  validates :content, presence: true

end
