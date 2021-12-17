class CreateMModels < ActiveRecord::Migration[6.1]
  def change
    create_table :m_models, id: false do |t|
      t.integer :model_id, primary_key: true, auto_increment: true, comment: 'モデルID'
      t.references :brand
      t.string :model_name, :limit => 255, null: false, comment: 'モデル名'
      t.integer :del_flg, comment: '削除フラグ'
      t.timestamps
    end
  end
end
