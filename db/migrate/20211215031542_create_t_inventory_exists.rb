class CreateTInventoryExists < ActiveRecord::Migration[6.1]
  def change
    create_table :t_inventory_exists, id: false do |t|
      t.integer :inventory_exist_info_id, primary_key: true, auto_increment: true, comment: '在庫有無情報ID'
      t.references :t_size
      t.references :inventor
      t.references :t_listing_detail
      t.integer :del_flg, comment: '削除フラグ'
      t.timestamps
    end
  end
end
