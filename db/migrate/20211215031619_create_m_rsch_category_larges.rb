class CreateMRschCategoryLarges < ActiveRecord::Migration[6.1]
  def change
    create_table :m_rsch_category_larges, id: false do |t|
      t.integer :rsch_category_large_id, primary_key: true, auto_increment: true, comment: 'リサーチカテゴリ大ID'
      t.references :rsch_account
      t.references :rsch_brand
      t.references :category_large
      t.integer :del_flg, comment: '削除フラグ'
      t.timestamps
    end
  end
end
