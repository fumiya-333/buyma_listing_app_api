class CreateMSeazons < ActiveRecord::Migration[6.1]
  def change
    create_table :m_seazons, id: false do |t|
      t.integer :seazon_id, primary_key: true, auto_increment: true, comment: 'シーズンID'
      t.string :seazon_name, :limit => 255, null: false, comment: 'シーズン名'
      t.integer :del_flg, comment: '削除フラグ'
      t.timestamps
    end
  end
end
