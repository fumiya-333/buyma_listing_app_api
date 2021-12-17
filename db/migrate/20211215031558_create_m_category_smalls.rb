class CreateMCategorySmalls < ActiveRecord::Migration[6.1]
  def change
    create_table :m_category_smalls, id: false do |t|
      t.integer :category_small_id, primary_key: true, auto_increment: true, comment: 'カテゴリ小ID'
      t.references :category_midium
      t.references :category_large
      t.string :category_name, :limit => 255, null: false, comment: 'カテゴリ名'
      t.integer :del_flg, comment: '削除フラグ'
      t.timestamps
    end
  end
end
