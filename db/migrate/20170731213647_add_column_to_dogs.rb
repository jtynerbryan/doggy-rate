class AddColumnToDogs < ActiveRecord::Migration[5.1]
  def change
    add_column :dogs, :picture, :string
  end
end
