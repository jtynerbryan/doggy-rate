class AddBurnedAtStakeToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :burned_at_stake, :boolean, default: false
  end
end
