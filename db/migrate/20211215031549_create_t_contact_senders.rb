class CreateTContactSenders < ActiveRecord::Migration[6.1]
  def change
    create_table :t_contact_senders, id: false do |t|
      t.integer :contact_sender_id, primary_key: true, auto_increment: true, comment: 'お問い合わせ送信者ID'
      t.string :contact_sender_name, :limit => 255, null: false, comment: 'お問い合わせ送信者名'
      t.integer :del_flg, comment: '削除フラグ'
      t.timestamps
    end
  end
end
