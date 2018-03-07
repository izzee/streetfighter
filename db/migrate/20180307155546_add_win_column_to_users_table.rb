class AddWinColumnToUsersTable < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :wins, :integer
    add_column :users, :losses, :integer
  end
end
