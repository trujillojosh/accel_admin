class AddAdminToLogin < ActiveRecord::Migration[5.1]
  def change
    add_column :logins, :admin, :boolean
  end
end
