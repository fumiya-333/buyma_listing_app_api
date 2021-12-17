class CreateTSizes < ActiveRecord::Migration[6.1]
  def change
    create_table :t_sizes, id: false do |t|
      t.integer :size_info_id, primary_key: true, auto_increment: true, comment: 'サイズ情報ID'
      t.references :jp_size
      t.string :size_name, :limit => 255, null: false, comment: 'サイズ名'
      t.references :t_listing_detail
      t.integer :del_flg, comment: '削除フラグ'
      t.timestamps
    end
  end
end
