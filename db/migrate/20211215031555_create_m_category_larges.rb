class CreateMCategoryLarges < ActiveRecord::Migration[6.1]
  def change
    create_table :m_category_larges, id: false do |t|
      t.integer :category_large_id, primary_key: true, auto_increment: true, comment: 'カテゴリ大ID'
      t.string :category_name, :limit => 255, null: false, comment: 'カテゴリ名'
      t.integer :del_flg, comment: '削除フラグ'
      t.timestamps
    end
  end
end
