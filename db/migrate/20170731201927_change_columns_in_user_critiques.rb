class ChangeColumnsInUserCritiques < ActiveRecord::Migration[5.1]
	def change
		remove_column :user_critiques, :user_id
	end
end
