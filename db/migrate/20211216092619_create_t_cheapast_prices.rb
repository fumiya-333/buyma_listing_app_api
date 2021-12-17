class CreateTCheapastPrices < ActiveRecord::Migration[6.1]
  def change
    create_table :t_cheapast_prices, id: false do |t|
      t.integer :cheapast_info_id, primary_key: true, auto_increment: true, comment: '最安値情報ID'
      t.references :t_listing_detail
      t.integer :listing_price, comment: '出品価格'
      t.string :listing_img_file_name, :limit => 255, comment: '出品画像ファイル名'
      t.string :listing_page_url, :limit => 255, comment: '出品ページURL'
      t.integer :del_flg, comment: '削除フラグ'
      t.timestamps
    end
  end
end
