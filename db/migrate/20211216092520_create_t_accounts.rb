class CreateTAccounts < ActiveRecord::Migration[6.1]
  def change
    create_table :t_accounts, id: false do |t|
      t.integer :account_info_id, primary_key: true, auto_increment: true, comment: 'アカウント情報ID'
      t.references :account
      t.references :user
      t.integer :del_flg, comment: '削除フラグ'
      t.timestamps
    end
  end
end
