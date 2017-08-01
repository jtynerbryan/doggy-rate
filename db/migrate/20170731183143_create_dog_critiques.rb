class CreateDogCritiques < ActiveRecord::Migration[5.1]
  def change
    create_table :dog_critiques do |t|
      t.text :content
      t.integer :user_id
      t.integer :dog_id

      t.timestamps
    end
  end
end
