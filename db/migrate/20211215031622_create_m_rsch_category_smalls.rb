class CreateMRschCategorySmalls < ActiveRecord::Migration[6.1]
  def change
    create_table :m_rsch_category_smalls, id: false do |t|
      t.integer :rsch_category_small_id, primary_key: true, auto_increment: true, comment: 'リサーチカテゴリ小ID'
      t.references :rsch_category_middium
      t.references :rsch_category_large
      t.references :rsch_account
      t.references :rsch_brand
      t.references :category_small
      t.integer :del_flg, comment: '削除フラグ'
      t.timestamps
    end
  end
end
