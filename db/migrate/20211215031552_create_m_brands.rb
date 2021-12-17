class CreateMBrands < ActiveRecord::Migration[6.1]
  def change
    create_table :m_brands, id: false do |t|
      t.integer :brand_id, primary_key: true, auto_increment: true, comment: 'ブランドID'
      t.string :brand_name, :limit => 255, null: false, comment: 'ブランド名'
      t.integer :del_flg, comment: '削除フラグ'
      t.timestamps
    end
  end
end
