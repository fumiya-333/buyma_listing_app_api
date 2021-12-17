class CreateMRschMethods < ActiveRecord::Migration[6.1]
  def change
    create_table :m_rsch_methods, id: false do |t|
      t.integer :rsch_method_id, primary_key: true, auto_increment: true, comment: 'リサーチ方法ID'
      t.integer :kb_rsch_method, null: false, comment: 'リサーチ方法区分, 1:人気順、2:新着順'
      t.integer :del_flg, comment: '削除フラグ'
      t.timestamps
    end
  end
end
