class RenameDogCritiques < ActiveRecord::Migration[5.1]
  def change
  	rename_table :dog_critiques, :dog_reviews
  end
end
