class AddNicknameToLogins < ActiveRecord::Migration[5.1]
  def change
    add_column :logins, :nickname, :string
  end
end
