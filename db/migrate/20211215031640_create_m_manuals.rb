class CreateMManuals < ActiveRecord::Migration[6.1]
  def change
    create_table :m_manuals, id: false do |t|
      t.integer :manual_id, primary_key: true, auto_increment: true, comment: 'マニュアルID'
      t.string :manual_name, :limit => 255, comment: 'マニュアル名'
      t.string :youtube_id, :limit => 255, comment: 'youtubeid'
      t.text :pdf_filepath, comment: 'pdfファイルパス'
      t.string :kb_be_in_change, :limit => 2, comment: '担当区分, 0：運営者、1：アシスタント、2:リサーチ外注、3:出品外注'
      t.integer :del_flg, comment: '削除フラグ'
      t.timestamps
    end
  end
end
