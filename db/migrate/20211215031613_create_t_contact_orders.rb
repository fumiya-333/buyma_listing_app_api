class CreateTContactOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :t_contact_orders, id: false do |t|
      t.integer :contact_order_info_id, primary_key: true, auto_increment: true, comment: 'お問い合わせ情報・注文ID'
      t.integer :transaction_id, null: false, comment: '取引ID'
      t.timestamp :contact_at, comment: 'お問い合わせ日'
      t.string :product_url, :limit => 255, comment: 'お問い合わせ商品URL'
      t.integer :buyer_location_id, comment: '買付先ID'
      t.integer :brand_id, comment: 'ブランドID'
      t.string :costomer_name, :limit => 255, comment: 'お客様名'
      t.string :for_reply_url, :limit => 255, comment: '返信用URL'
      t.integer :purchase_price_foreign_currency, comment: '仕入れ価格（外貨）'
      t.integer :purchase_price, comment: '仕入れ価格, 買付スタッフに支払う報酬'
      t.integer :tax, comment: '税金（tax）※アメリカ・カナダ'
      t.integer :shipping, comment: '送料'
      t.integer :reward_price, comment: '報酬金額'
      t.integer :packing_cost, comment: '梱包費, 出品価格*7%（切り上げ）'
      t.integer :traffic_cost, comment: '交通費, 成約手数料*10%（切り上げ）'
      t.integer :other_cost, comment: 'その他経費'
      t.integer :contract_fee, comment: '成約手数料, 出品価格-(仕入れ価格+税金（tax）+送料+報酬金額+梱包費+交通費+その他経費+成約手数料+成約手数料（消費税）)'
      t.integer :contract_fee_consumption_tax, comment: '成約手数料（消費税）'
      t.integer :selling_price, comment: '出品価格'
      t.integer :profit, comment: '利益'
      t.integer :order_confirm_flg, comment: '注文確定フラグ'
      t.integer :del_flg, comment: '削除フラグ'
      t.timestamps
    end
  end
end
