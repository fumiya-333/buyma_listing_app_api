class CreateMBuyerStates < ActiveRecord::Migration[6.1]
  def change
    create_table :m_buyer_states, id: false do |t|
      t.integer :buyer_state_id, primary_key: true, auto_increment: true, comment: '買付州ID'
      t.string :buyer_state_name, :limit => 255, comment: '買付州名'
      t.integer :del_flg, comment: '削除フラグ'
      t.timestamps
    end
  end
end
