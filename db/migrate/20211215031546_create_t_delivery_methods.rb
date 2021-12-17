class CreateTDeliveryMethods < ActiveRecord::Migration[6.1]
  def change
    create_table :t_delivery_methods, id: false do |t|
      t.integer :delivery_method_info_id, primary_key: true, auto_increment: true, comment: '配送方法情報ID'
      t.references :delivery_method
      t.references :t_listing_detail
      t.integer :del_flg, comment: '削除フラグ'
      t.timestamps
    end
  end
end
