class CreateMShippingAreas < ActiveRecord::Migration[6.1]
  def change
    create_table :m_shipping_areas, id: false do |t|
      t.integer :shipping_area_id, primary_key: true, auto_increment: true, comment: '発送地域ID'
      t.references :shipping_location
      t.references :shipping_state
      t.string :shipping_area_name, :limit => 255, comment: '発送地域名'
      t.integer :del_flg, comment: '削除フラグ'
      t.timestamps
    end
  end
end
