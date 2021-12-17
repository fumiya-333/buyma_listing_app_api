class CreateMDeliveryMethods < ActiveRecord::Migration[6.1]
  def change
    create_table :m_delivery_methods, id: false do |t|
      t.integer :delivery_method_id, primary_key: true, auto_increment: true, comment: '配送方法ID'
      t.string :delivery_method_name, :limit => 255, null: false, comment: '配送方法名'
      t.integer :shipping, null: false, comment: '送料'
      t.string :tracking, :limit => 2, null: false, comment: '追跡'
      t.string :derivery_from_order, :limit => 20, null: false, comment: '注文からの配送目安'
      t.integer :del_flg, comment: '削除フラグ'
      t.timestamps
    end
  end
end
