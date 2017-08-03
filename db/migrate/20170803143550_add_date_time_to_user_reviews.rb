class AddDateTimeToUserReviews < ActiveRecord::Migration[5.1]
  def change
	  add_column :user_reviews, :created_at, :datetime
      add_column :user_reviews, :updated_at, :datetime
  end
end
