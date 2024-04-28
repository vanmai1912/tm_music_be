class AddLoginByToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :login_by, :string
  end
end
