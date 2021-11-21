class ChangeNameColumnToMUsers < ActiveRecord::Migration[6.1]
  def change
    change_column :m_users, :name, :string, null: false
  end
end
