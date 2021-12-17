class CreateMShippingLocations < ActiveRecord::Migration[6.1]
  def change
    create_table :m_shipping_locations, id: false do |t|
      t.integer :shipping_location_id, primary_key: true, auto_increment: true, comment: '発送先ID'
      t.references :shipping_state
      t.string :shipping_address_name, :limit => 255, comment: '発送先名'
      t.integer :del_flg, comment: '削除フラグ'
      t.timestamps
    end
  end
end
