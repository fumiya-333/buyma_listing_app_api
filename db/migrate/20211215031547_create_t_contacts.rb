class CreateTContacts < ActiveRecord::Migration[6.1]
  def change
    create_table :t_contacts, id: false do |t|
      t.integer :contact_info_id, primary_key: true, auto_increment: true, comment: 'お問い合わせ情報ID'
      t.text :contact_message, null: false, comment: 'お問い合わせメッセージ'
      t.references :t_listing_detail
      t.references :t_contact_sender
      t.timestamp :contact_send_date, comment: 'お問い合わせ送信日'
      t.integer :customer_send_flg, comment: 'お客様送信フラグ, 0:お客様、1:ショッパー'
      t.integer :del_flg, comment: '削除フラグ'
      t.timestamps
    end
  end
end
