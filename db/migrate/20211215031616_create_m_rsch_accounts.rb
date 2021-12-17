class CreateMRschAccounts < ActiveRecord::Migration[6.1]
  def change
    create_table :m_rsch_accounts, id: false do |t|
      t.integer :rsch_account_id, primary_key: true, auto_increment: true, comment: 'リサーチアカウントID'
      t.string :account_name, :limit => 255, null: false, comment: 'アカウント名'
      t.string :account_page_url, :limit => 255, comment: 'アカウントページURL'
      t.integer :del_flg, comment: '削除フラグ'
      t.timestamps
    end
  end
end
