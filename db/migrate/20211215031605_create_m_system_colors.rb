class CreateMSystemColors < ActiveRecord::Migration[6.1]
  def change
    create_table :m_system_colors, id: false do |t|
      t.integer :system_color_id, primary_key: true, auto_increment: true, comment: '色系統ID'
      t.string :system_color_name, :limit => 255, null: false, comment: '色系統名'
      t.integer :del_flg, comment: '削除フラグ'
      t.timestamps
    end
  end
end
