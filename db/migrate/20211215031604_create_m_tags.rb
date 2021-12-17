class CreateMTags < ActiveRecord::Migration[6.1]
  def change
    create_table :m_tags, id: false do |t|
      t.integer :tag_id, primary_key: true, auto_increment: true, comment: 'タグID'
      t.string :tag_name, :limit => 255, null: false, comment: 'タグ名'
      t.references :tag_classification
      t.integer :del_flg, comment: '削除フラグ'
      t.timestamps
    end
  end
end
