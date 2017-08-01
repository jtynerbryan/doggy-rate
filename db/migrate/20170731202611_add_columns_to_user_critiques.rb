class AddColumnsToUserCritiques < ActiveRecord::Migration[5.1]
  def change
    add_column :user_critiques, :reviewer_id, :integer
    add_column :user_critiques, :reviewee_id, :integer
  end
end
