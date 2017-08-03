class CreateUserReviews < ActiveRecord::Migration[5.1]
  def change
    create_table :user_reviews do |t|
      t.string :content
      t.boolean :mean, default: false
      t.integer :reviewer_id
      t.integer :reviewee_id
    end
  end
end
