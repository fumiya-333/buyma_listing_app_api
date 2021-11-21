class ChangeEmailColumnToMUsers < ActiveRecord::Migration[6.1]
  def change
    change_column :m_users, :email, :string, null: false
  end
end
