class CreateMCategoryMidiums < ActiveRecord::Migration[6.1]
  def change
    create_table :m_category_midiums, id: false do |t|
      t.integer :category_midium_id, primary_key: true, auto_increment: true, comment: 'カテゴリ中ID'
      t.references :category_large
      t.string :category_name, :limit => 255, null: false, comment: 'カテゴリ名'
      t.integer :del_flg, comment: '削除フラグ'
      t.timestamps
    end
  end
end
