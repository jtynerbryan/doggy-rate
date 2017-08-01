class CreateUserCritiques < ActiveRecord::Migration[5.1]
  def change
    create_table :user_critiques do |t|
      t.string :content
      t.integer :user_id
      t.boolean :mean, default: false

      t.timestamps
    end
  end
end
