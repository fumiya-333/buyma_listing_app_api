class CreateMFeaturedKeywords < ActiveRecord::Migration[6.1]
  def change
    create_table :m_featured_keywords, id: false do |t|
      t.integer :featured_keywork_id, primary_key: true, auto_increment: true, comment: '注目キーワードID'
      t.string :送信元, :limit => 255, comment: '注文キーワード'
      t.integer :del_flg, comment: '削除フラグ'
      t.timestamps
    end
  end
end
