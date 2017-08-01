class RenameUserCritiques < ActiveRecord::Migration[5.1]
  def change
  	rename_table :user_critiques, :user_reviews
  end
end
