class RemoveColumnsMUsers < ActiveRecord::Migration[6.1]
  def change
    remove_column :m_users, :password, :string
  end
end
