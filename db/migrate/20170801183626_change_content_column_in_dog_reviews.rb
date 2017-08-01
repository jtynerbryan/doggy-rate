class ChangeContentColumnInDogReviews < ActiveRecord::Migration[5.1]
  def change
  	change_column :dog_reviews, :content, :string
  end
end
