class CreateMTagClassifications < ActiveRecord::Migration[6.1]
  def change
    create_table :m_tag_classifications, id: false do |t|
      t.integer :tag_classification_id, primary_key: true, auto_increment: true, comment: 'タグ分類ID'
      t.string :tag_classification_name, :limit => 255, null: false, comment: 'タグ分類名'
      t.integer :del_flg, comment: '削除フラグ'
      t.timestamps
    end
  end
end
