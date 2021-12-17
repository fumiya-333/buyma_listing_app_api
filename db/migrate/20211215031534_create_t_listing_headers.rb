class CreateTListingHeaders < ActiveRecord::Migration[6.1]
  def change
    create_table :t_listing_headers, id: false do |t|
      t.integer :listing_header_info_id, primary_key: true, auto_increment: true, comment: '出品ヘッダー情報ID'
      t.references :user
      t.references :account
      t.string :item_name, :limit => 255, null: false, comment: '項目名'
      t.integer :kb_input, comment: '入力区分, 0:未入力（テキスト）、1:テキストボックス、2:コンボボックス、3:テキストエリア、4:日付入力、5;画像選択、6:未入力（チップ）、7:ボタン'
      t.boolean :kb_require, comment: '必須区分, 0:任意、1:必須'
      t.boolean :kb_active, comment: '活性区分, 0:非活性、1:活性'
      t.boolean :kb_display, comment: '表示区分, 0:非表示、1:表示'
      t.integer :del_flg, comment: '削除フラグ'
      t.timestamps
    end
  end
end
