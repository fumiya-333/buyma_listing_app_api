class CreateMUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :m_users, id: false do |t|
      t.integer :user_id, primary_key: true, auto_increment: true, comment: 'ユーザーID'
      t.string :name, :limit => 255, null: false, comment: 'ユーザー名'
      t.string :email, :limit => 255, index: { unique: true }, null: false, comment: 'メールアドレス'
      t.string :password_digest, :limit => 255, null: false, comment: 'パスワード'
      t.string :kb_be_in_change, :limit => 2, comment: '担当区分, 0：運営者、1：アシスタント、2:リサーチ外注、3:出品外注'
      t.integer :del_flg, comment: '削除フラグ'
      t.timestamps
    end
  end
end
