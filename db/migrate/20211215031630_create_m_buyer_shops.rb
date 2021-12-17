class CreateMBuyerShops < ActiveRecord::Migration[6.1]
  def change
    create_table :m_buyer_shops, id: false do |t|
      t.integer :buyer_shop_id, primary_key: true, auto_increment: true, comment: '買付先ショップID'
      t.string :buyer_shop_name, :limit => 255, comment: '買付先ショップ名'
      t.integer :del_flg, comment: '削除フラグ'
      t.timestamps
    end
  end
end
