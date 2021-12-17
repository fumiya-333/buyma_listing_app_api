class CreateTInventoryChecks < ActiveRecord::Migration[6.1]
  def change
    create_table :t_inventory_checks, id: false do |t|
      t.integer :inventory_check_info_id, primary_key: true, auto_increment: true, comment: '在庫確認情報ID'
      t.integer :inventory_check_status, comment: '在庫確認状態, 0:在庫確認依頼中、1:在庫なし、2:在庫あり、3:返信待ち、4:対応済'
      t.references :buyer_location
      t.references :t_contact_order
      t.integer :inventory_check_priority, comment: '在庫確認優先順位, 0:優先順位高、1:優先順位中、優先順位小'
      t.integer :del_flg, comment: '削除フラグ'
      t.timestamps
    end
  end
end
