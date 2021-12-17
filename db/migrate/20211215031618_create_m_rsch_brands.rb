class CreateMRschBrands < ActiveRecord::Migration[6.1]
  def change
    create_table :m_rsch_brands, id: false do |t|
      t.integer :rsch_brand_id, primary_key: true, auto_increment: true, comment: 'リサーチブランドID'
      t.references :rsch_account
      t.references :brand
      t.text :rsch_brand_url, comment: 'リサーチブランドURL'
      t.integer :del_flg, comment: '削除フラグ'
      t.timestamps
    end
  end
end
