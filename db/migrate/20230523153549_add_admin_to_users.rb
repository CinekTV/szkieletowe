class AddAdminToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :check_admin, :boolean
  end
end
