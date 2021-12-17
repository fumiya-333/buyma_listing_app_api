class CreateMBuyerStuffRewards < ActiveRecord::Migration[6.1]
  def change
    create_table :m_buyer_stuff_rewards, id: false do |t|
      t.integer :buyer_stuff_reward_id, primary_key: true, auto_increment: true, comment: '買付スタッフ報酬ID'
      t.integer :reward_price, comment: '報酬金額'
      t.integer :del_flg, comment: '削除フラグ'
      t.timestamps
    end
  end
end
