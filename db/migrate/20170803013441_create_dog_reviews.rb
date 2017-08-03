class CreateDogReviews < ActiveRecord::Migration[5.1]
  def change
    create_table :dog_reviews do |t|
      t.string :content
      t.integer :user_id
      t.integer :dog_id
    end
  end
end
