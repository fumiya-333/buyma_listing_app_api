class CreateMInventory < ActiveRecord::Migration[6.1]
  def change
    create_table :m_inventories, id: false do |t|
      t.integer :inventory_id, primary_key: true, auto_increment: true, comment: '在庫ID'
      t.string :inventory_status_name, :limit => 255, index: { unique: true }, null: false, comment: '在庫状況名'
      t.integer :del_flg, comment: '削除フラグ'
      t.timestamps
    end
  end
end
