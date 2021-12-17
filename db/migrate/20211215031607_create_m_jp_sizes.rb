class CreateMJpSizes < ActiveRecord::Migration[6.1]
  def change
    create_table :m_jp_sizes, id: false do |t|
      t.integer :jp_size_id, primary_key: true, auto_increment: true, comment: '参考日本サイズID'
      t.string :jp_size_name, :limit => 255, null: false, comment: '参考日本サイズ名'
      t.references :category_large
      t.references :category_midium
      t.references :category_small
      t.integer :del_flg, comment: '削除フラグ'
      t.timestamps
    end
  end
end
