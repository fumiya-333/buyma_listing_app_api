class CreateMBuyerLocations < ActiveRecord::Migration[6.1]
  def change
    create_table :m_buyer_locations, id: false do |t|
      t.integer :buyer_location_id, primary_key: true, auto_increment: true, comment: '買付先ID'
      t.references :buyer_state
      t.string :buyer_location_name, :limit => 255, comment: '買付先名'
      t.integer :del_flg, comment: '削除フラグ'
      t.timestamps
    end
  end
end
