class CreateMBuyerAreas < ActiveRecord::Migration[6.1]
  def change
    create_table :m_buyer_areas, id: false do |t|
      t.integer :buyer_area_id, primary_key: true, auto_increment: true, comment: '買付地域ID'
      t.references :buyer_location
      t.references :buyer_state
      t.string :buyer_area_name, :limit => 255, comment: '買付地域名'
      t.integer :del_flg, comment: '削除フラグ'
      t.timestamps
    end
  end
end
