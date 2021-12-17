class CreateMAccounts < ActiveRecord::Migration[6.1]
  def change
    create_table :m_accounts, id: false do |t|
      t.integer :account_id, primary_key: true, auto_increment: true, comment: 'アカウントID'
      t.string :account_name, :limit => 255, null: false, comment: 'アカウント名'
      t.references :user
      t.integer :del_flg, comment: '削除フラグ'
      t.timestamps
    end
  end
end
