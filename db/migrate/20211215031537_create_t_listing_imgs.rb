class CreateTListingImgs < ActiveRecord::Migration[6.1]
  def change
    create_table :t_listing_imgs, id: false do |t|
      t.integer :listing_img_id, primary_key: true, auto_increment: true, comment: '出品画像ID'
      t.string :listing_img_file_name, :limit => 255, null: false, comment: '出品画像ファイル名'
      t.references :t_listing_detail
      t.integer :del_flg, comment: '削除フラグ'
      t.timestamps
    end
  end
end
