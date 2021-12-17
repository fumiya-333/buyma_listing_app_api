class CreateTTags < ActiveRecord::Migration[6.1]
  def change
    create_table :t_tags, id: false do |t|
      t.integer :tag_info_id, primary_key: true, auto_increment: true, comment: 'タグ情報ID'
      t.references :tag
      t.references :t_listing_detail
      t.integer :del_flg, comment: '削除フラグ'
      t.timestamps
    end
  end
end
