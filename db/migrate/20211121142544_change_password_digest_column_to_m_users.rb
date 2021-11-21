class ChangePasswordDigestColumnToMUsers < ActiveRecord::Migration[6.1]
  def change
    change_column :m_users, :password_digest, :string, null: false
  end
end
