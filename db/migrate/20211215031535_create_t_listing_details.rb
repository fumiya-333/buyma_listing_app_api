class CreateTListingDetails < ActiveRecord::Migration[6.1]
  def change
    create_table :t_listing_details, id: false do |t|
      t.integer :listing_detail_info_id, primary_key: true, auto_increment: true, comment: '出品明細情報ID'
      t.references :user
      t.references :account
      t.string :buyma_url, :limit => 255, comment: 'BUYMA_URL'
      t.string :supplier_url, :limit => 255, comment: '仕入れ先_URL'
      t.string :product_name, :limit => 255, comment: '商品名'
      t.text :product_comment, comment: '商品コメント'
      t.references :category_large
      t.references :category_midium
      t.references :category_small
      t.references :brand
      t.references :model
      t.references :seazon
      t.references :theme
      t.string :color_size_repletion_info, :limit => 255, comment: '色・サイズ補足情報'
      t.string :purchase_deadline, :limit => 8, comment: '購入期限'
      t.references :buyer_location
      t.references :buyer_shop
      t.references :shipping_location
      t.integer :purchase_price_foreign_currency, comment: '仕入れ価格（外貨）'
      t.integer :purchase_price, comment: '仕入れ価格'
      t.integer :listing_price, comment: '出品価格'
      t.integer :reference_price_regular_listing_price, comment: '参考価格/通常出品価格, 0:設定しない、1:参考価格、2:通常出品価格'
      t.integer :reference_price, comment: '参考価格'
      t.string :cheapast_price_url, :limit => 255, comment: '最安値URL'
      t.string :rsch_at, :limit => 8, comment: 'リサーチ日付'
      t.boolean :rsch_be_in_change_progress, comment: 'リサーチ担当者様進捗, 0:未完了、1:完了'
      t.string :listing_at, :limit => 8, comment: '出品日付'
      t.boolean :listing_be_in_change_progress, comment: '出品担当者様進捗, 0:未完了、1:完了'
      t.integer :tariffs, comment: '関税, 0:別途関税払い、1:関税込み（購入者の負担なし）'
      t.text :listing_memo, comment: '出品メモ'
      t.text :buyer_memo, comment: '買付先メモ'
      t.string :featured_keyword, :limit => 255, comment: '注目キーワード'
      t.references :rsch_account
      t.string :rsch_account_listing_date, :limit => 8, comment: 'リサーチアカウント出品日付'
      t.integer :access_count, comment: 'アクセス数'
      t.integer :favorite_count, comment: 'お気に入り登録数'
      t.text :remarks, comment: '備考'
      t.references :rsch_method
      t.integer :del_flg, comment: '削除フラグ'
      t.timestamps
    end
  end
end
