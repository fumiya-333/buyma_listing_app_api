class CreateTModelNumbers < ActiveRecord::Migration[6.1]
  def change
    create_table :t_model_numbers, id: false do |t|
      t.integer :model_number_info_id, primary_key: true, auto_increment: true, comment: '型番情報ID'
      t.string :model_number_name, :limit => 255, comment: '型番名'
      t.references :t_listing_detail
      t.integer :del_flg, comment: '削除フラグ'
      t.timestamps
    end
  end
end
