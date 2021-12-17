class CreateTColors < ActiveRecord::Migration[6.1]
  def change
    create_table :t_colors, id: false do |t|
      t.integer :color_info_id, primary_key: true, auto_increment: true, comment: '色情報ID'
      t.references :systecolor
      t.string :size_name, :limit => 255, null: false, comment: '色名'
      t.references :t_listing_detail
      t.integer :del_flg, comment: '削除フラグ'
      t.timestamps
    end
  end
end
