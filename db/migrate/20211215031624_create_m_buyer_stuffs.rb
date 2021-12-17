class CreateMBuyerStuffs < ActiveRecord::Migration[6.1]
  def change
    create_table :m_buyer_stuffs, id: false do |t|
      t.integer :buyer_stuff_id, primary_key: true, auto_increment: true, comment: '買付スタッフID'
      t.string :buyer_stuff_name, :limit => 255, comment: '買付スタッフ名'
      t.integer :buyer_location_id, comment: '買付先ID'
      t.integer :del_flg, comment: '削除フラグ'
      t.timestamps
    end
  end
end
