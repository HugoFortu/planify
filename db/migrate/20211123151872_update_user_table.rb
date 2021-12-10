 class UpdateUserTable < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :pseudo, :string
    add_column :users, :telephone, :string
  end
end
