class CreateMThemes < ActiveRecord::Migration[6.1]
  def change
    create_table :m_themes, id: false do |t|
      t.integer :theme_id, primary_key: true, auto_increment: true, comment: 'テーマID'
      t.string :theme_name, :limit => 255, null: false, comment: 'テーマ名'
      t.integer :del_flg, comment: '削除フラグ'
      t.timestamps
    end
  end
end
