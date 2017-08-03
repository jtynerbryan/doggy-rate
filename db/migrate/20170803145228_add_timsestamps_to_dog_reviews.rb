class AddTimsestampsToDogReviews < ActiveRecord::Migration[5.1]
  def change
  	  add_column :dog_reviews, :created_at, :datetime
      add_column :dog_reviews, :updated_at, :datetime
  end
end
