class AddOmniauthToLogins < ActiveRecord::Migration[5.1]
  def change
    add_column :logins, :provider, :string
    add_index :logins, :provider
    add_column :logins, :uid, :string
    add_index :logins, :uid
  end
end
