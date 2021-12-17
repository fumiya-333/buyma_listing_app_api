class CreateMShippingStates < ActiveRecord::Migration[6.1]
  def change
    create_table :m_shipping_states, id: false do |t|
      t.integer :shipping_state_id, primary_key: true, auto_increment: true, comment: '発送州ID'
      t.string :shipping_state_name, :limit => 255, comment: '発送州名'
      t.integer :del_flg, comment: '削除フラグ'
      t.timestamps
    end
  end
end
