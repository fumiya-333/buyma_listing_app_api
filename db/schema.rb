# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_12_16_092619) do

  create_table "m_accounts", primary_key: "account_id", id: { type: :integer, comment: "アカウントID" }, charset: "utf8mb4", force: :cascade do |t|
    t.string "account_name", null: false, comment: "アカウント名"
    t.bigint "user_id"
    t.integer "del_flg", comment: "削除フラグ"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_m_accounts_on_user_id"
  end

  create_table "m_brands", primary_key: "brand_id", id: { type: :integer, comment: "ブランドID" }, charset: "utf8mb4", force: :cascade do |t|
    t.string "brand_name", null: false, comment: "ブランド名"
    t.integer "del_flg", comment: "削除フラグ"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "m_buyer_areas", primary_key: "buyer_area_id", id: { type: :integer, comment: "買付地域ID" }, charset: "utf8mb4", force: :cascade do |t|
    t.bigint "buyer_location_id"
    t.bigint "buyer_state_id"
    t.string "buyer_area_name", comment: "買付地域名"
    t.integer "del_flg", comment: "削除フラグ"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["buyer_location_id"], name: "index_m_buyer_areas_on_buyer_location_id"
    t.index ["buyer_state_id"], name: "index_m_buyer_areas_on_buyer_state_id"
  end

  create_table "m_buyer_locations", primary_key: "buyer_location_id", id: { type: :integer, comment: "買付先ID" }, charset: "utf8mb4", force: :cascade do |t|
    t.bigint "buyer_state_id"
    t.string "buyer_location_name", comment: "買付先名"
    t.integer "del_flg", comment: "削除フラグ"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["buyer_state_id"], name: "index_m_buyer_locations_on_buyer_state_id"
  end

  create_table "m_buyer_shops", primary_key: "buyer_shop_id", id: { type: :integer, comment: "買付先ショップID" }, charset: "utf8mb4", force: :cascade do |t|
    t.string "buyer_shop_name", comment: "買付先ショップ名"
    t.integer "del_flg", comment: "削除フラグ"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "m_buyer_states", primary_key: "buyer_state_id", id: { type: :integer, comment: "買付州ID" }, charset: "utf8mb4", force: :cascade do |t|
    t.string "buyer_state_name", comment: "買付州名"
    t.integer "del_flg", comment: "削除フラグ"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "m_buyer_stuff_rewards", primary_key: "buyer_stuff_reward_id", id: { type: :integer, comment: "買付スタッフ報酬ID" }, charset: "utf8mb4", force: :cascade do |t|
    t.integer "reward_price", comment: "報酬金額"
    t.integer "del_flg", comment: "削除フラグ"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "m_buyer_stuffs", primary_key: "buyer_stuff_id", id: { type: :integer, comment: "買付スタッフID" }, charset: "utf8mb4", force: :cascade do |t|
    t.string "buyer_stuff_name", comment: "買付スタッフ名"
    t.integer "buyer_location_id", comment: "買付先ID"
    t.integer "del_flg", comment: "削除フラグ"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "m_category_larges", primary_key: "category_large_id", id: { type: :integer, comment: "カテゴリ大ID" }, charset: "utf8mb4", force: :cascade do |t|
    t.string "category_name", null: false, comment: "カテゴリ名"
    t.integer "del_flg", comment: "削除フラグ"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "m_category_midiums", primary_key: "category_midium_id", id: { type: :integer, comment: "カテゴリ中ID" }, charset: "utf8mb4", force: :cascade do |t|
    t.bigint "category_large_id"
    t.string "category_name", null: false, comment: "カテゴリ名"
    t.integer "del_flg", comment: "削除フラグ"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["category_large_id"], name: "index_m_category_midiums_on_category_large_id"
  end

  create_table "m_category_smalls", primary_key: "category_small_id", id: { type: :integer, comment: "カテゴリ小ID" }, charset: "utf8mb4", force: :cascade do |t|
    t.bigint "category_midium_id"
    t.bigint "category_large_id"
    t.string "category_name", null: false, comment: "カテゴリ名"
    t.integer "del_flg", comment: "削除フラグ"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["category_large_id"], name: "index_m_category_smalls_on_category_large_id"
    t.index ["category_midium_id"], name: "index_m_category_smalls_on_category_midium_id"
  end

  create_table "m_delivery_methods", primary_key: "delivery_method_id", id: { type: :integer, comment: "配送方法ID" }, charset: "utf8mb4", force: :cascade do |t|
    t.string "delivery_method_name", null: false, comment: "配送方法名"
    t.integer "shipping", null: false, comment: "送料"
    t.string "tracking", limit: 2, null: false, comment: "追跡"
    t.string "derivery_from_order", limit: 20, null: false, comment: "注文からの配送目安"
    t.integer "del_flg", comment: "削除フラグ"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "m_featured_keywords", primary_key: "featured_keywork_id", id: { type: :integer, comment: "注目キーワードID" }, charset: "utf8mb4", force: :cascade do |t|
    t.string "送信元", comment: "注文キーワード"
    t.integer "del_flg", comment: "削除フラグ"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "m_inventories", primary_key: "inventory_id", id: { type: :integer, comment: "在庫ID" }, charset: "utf8mb4", force: :cascade do |t|
    t.string "inventory_status_name", null: false, comment: "在庫状況名"
    t.integer "del_flg", comment: "削除フラグ"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["inventory_status_name"], name: "index_m_inventories_on_inventory_status_name", unique: true
  end

  create_table "m_jp_sizes", primary_key: "jp_size_id", id: { type: :integer, comment: "参考日本サイズID" }, charset: "utf8mb4", force: :cascade do |t|
    t.string "jp_size_name", null: false, comment: "参考日本サイズ名"
    t.bigint "category_large_id"
    t.bigint "category_midium_id"
    t.bigint "category_small_id"
    t.integer "del_flg", comment: "削除フラグ"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["category_large_id"], name: "index_m_jp_sizes_on_category_large_id"
    t.index ["category_midium_id"], name: "index_m_jp_sizes_on_category_midium_id"
    t.index ["category_small_id"], name: "index_m_jp_sizes_on_category_small_id"
  end

  create_table "m_manuals", primary_key: "manual_id", id: { type: :integer, comment: "マニュアルID" }, charset: "utf8mb4", force: :cascade do |t|
    t.string "manual_name", comment: "マニュアル名"
    t.string "youtube_id", comment: "youtubeid"
    t.text "pdf_filepath", comment: "pdfファイルパス"
    t.string "kb_be_in_change", limit: 2, comment: "担当区分, 0：運営者、1：アシスタント、2:リサーチ外注、3:出品外注"
    t.integer "del_flg", comment: "削除フラグ"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "m_models", primary_key: "model_id", id: { type: :integer, comment: "モデルID" }, charset: "utf8mb4", force: :cascade do |t|
    t.bigint "brand_id"
    t.string "model_name", null: false, comment: "モデル名"
    t.integer "del_flg", comment: "削除フラグ"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["brand_id"], name: "index_m_models_on_brand_id"
  end

  create_table "m_rsch_accounts", primary_key: "rsch_account_id", id: { type: :integer, comment: "リサーチアカウントID" }, charset: "utf8mb4", force: :cascade do |t|
    t.string "account_name", null: false, comment: "アカウント名"
    t.string "account_page_url", comment: "アカウントページURL"
    t.integer "del_flg", comment: "削除フラグ"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "m_rsch_brands", primary_key: "rsch_brand_id", id: { type: :integer, comment: "リサーチブランドID" }, charset: "utf8mb4", force: :cascade do |t|
    t.bigint "rsch_account_id"
    t.bigint "brand_id"
    t.text "rsch_brand_url", comment: "リサーチブランドURL"
    t.integer "del_flg", comment: "削除フラグ"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["brand_id"], name: "index_m_rsch_brands_on_brand_id"
    t.index ["rsch_account_id"], name: "index_m_rsch_brands_on_rsch_account_id"
  end

  create_table "m_rsch_category_larges", primary_key: "rsch_category_large_id", id: { type: :integer, comment: "リサーチカテゴリ大ID" }, charset: "utf8mb4", force: :cascade do |t|
    t.bigint "rsch_account_id"
    t.bigint "rsch_brand_id"
    t.bigint "category_large_id"
    t.integer "del_flg", comment: "削除フラグ"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["category_large_id"], name: "index_m_rsch_category_larges_on_category_large_id"
    t.index ["rsch_account_id"], name: "index_m_rsch_category_larges_on_rsch_account_id"
    t.index ["rsch_brand_id"], name: "index_m_rsch_category_larges_on_rsch_brand_id"
  end

  create_table "m_rsch_category_middiums", primary_key: "rsch_category_middium_id", id: { type: :integer, comment: "リサーチカテゴリ中ID" }, charset: "utf8mb4", force: :cascade do |t|
    t.bigint "rsch_category_large_id"
    t.bigint "rsch_account_id"
    t.bigint "rsch_brand_id"
    t.bigint "category_midium_id"
    t.integer "del_flg", comment: "削除フラグ"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["category_midium_id"], name: "index_m_rsch_category_middiums_on_category_midium_id"
    t.index ["rsch_account_id"], name: "index_m_rsch_category_middiums_on_rsch_account_id"
    t.index ["rsch_brand_id"], name: "index_m_rsch_category_middiums_on_rsch_brand_id"
    t.index ["rsch_category_large_id"], name: "index_m_rsch_category_middiums_on_rsch_category_large_id"
  end

  create_table "m_rsch_category_smalls", primary_key: "rsch_category_small_id", id: { type: :integer, comment: "リサーチカテゴリ小ID" }, charset: "utf8mb4", force: :cascade do |t|
    t.bigint "rsch_category_middium_id"
    t.bigint "rsch_category_large_id"
    t.bigint "rsch_account_id"
    t.bigint "rsch_brand_id"
    t.bigint "category_small_id"
    t.integer "del_flg", comment: "削除フラグ"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["category_small_id"], name: "index_m_rsch_category_smalls_on_category_small_id"
    t.index ["rsch_account_id"], name: "index_m_rsch_category_smalls_on_rsch_account_id"
    t.index ["rsch_brand_id"], name: "index_m_rsch_category_smalls_on_rsch_brand_id"
    t.index ["rsch_category_large_id"], name: "index_m_rsch_category_smalls_on_rsch_category_large_id"
    t.index ["rsch_category_middium_id"], name: "index_m_rsch_category_smalls_on_rsch_category_middium_id"
  end

  create_table "m_rsch_methods", primary_key: "rsch_method_id", id: { type: :integer, comment: "リサーチ方法ID" }, charset: "utf8mb4", force: :cascade do |t|
    t.integer "kb_rsch_method", null: false, comment: "リサーチ方法区分, 1:人気順、2:新着順"
    t.integer "del_flg", comment: "削除フラグ"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "m_seazons", primary_key: "seazon_id", id: { type: :integer, comment: "シーズンID" }, charset: "utf8mb4", force: :cascade do |t|
    t.string "seazon_name", null: false, comment: "シーズン名"
    t.integer "del_flg", comment: "削除フラグ"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "m_shipping_areas", primary_key: "shipping_area_id", id: { type: :integer, comment: "発送地域ID" }, charset: "utf8mb4", force: :cascade do |t|
    t.bigint "shipping_location_id"
    t.bigint "shipping_state_id"
    t.string "shipping_area_name", comment: "発送地域名"
    t.integer "del_flg", comment: "削除フラグ"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["shipping_location_id"], name: "index_m_shipping_areas_on_shipping_location_id"
    t.index ["shipping_state_id"], name: "index_m_shipping_areas_on_shipping_state_id"
  end

  create_table "m_shipping_locations", primary_key: "shipping_location_id", id: { type: :integer, comment: "発送先ID" }, charset: "utf8mb4", force: :cascade do |t|
    t.bigint "shipping_state_id"
    t.string "shipping_address_name", comment: "発送先名"
    t.integer "del_flg", comment: "削除フラグ"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["shipping_state_id"], name: "index_m_shipping_locations_on_shipping_state_id"
  end

  create_table "m_shipping_states", primary_key: "shipping_state_id", id: { type: :integer, comment: "発送州ID" }, charset: "utf8mb4", force: :cascade do |t|
    t.string "shipping_state_name", comment: "発送州名"
    t.integer "del_flg", comment: "削除フラグ"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "m_system_colors", primary_key: "system_color_id", id: { type: :integer, comment: "色系統ID" }, charset: "utf8mb4", force: :cascade do |t|
    t.string "system_color_name", null: false, comment: "色系統名"
    t.integer "del_flg", comment: "削除フラグ"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "m_tag_classifications", primary_key: "tag_classification_id", id: { type: :integer, comment: "タグ分類ID" }, charset: "utf8mb4", force: :cascade do |t|
    t.string "tag_classification_name", null: false, comment: "タグ分類名"
    t.integer "del_flg", comment: "削除フラグ"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "m_tags", primary_key: "tag_id", id: { type: :integer, comment: "タグID" }, charset: "utf8mb4", force: :cascade do |t|
    t.string "tag_name", null: false, comment: "タグ名"
    t.bigint "tag_classification_id"
    t.integer "del_flg", comment: "削除フラグ"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["tag_classification_id"], name: "index_m_tags_on_tag_classification_id"
  end

  create_table "m_themes", primary_key: "theme_id", id: { type: :integer, comment: "テーマID" }, charset: "utf8mb4", force: :cascade do |t|
    t.string "theme_name", null: false, comment: "テーマ名"
    t.integer "del_flg", comment: "削除フラグ"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "m_users", primary_key: "user_id", id: { type: :integer, comment: "ユーザーID" }, charset: "utf8mb4", force: :cascade do |t|
    t.string "name", null: false, comment: "ユーザー名"
    t.string "email", null: false, comment: "メールアドレス"
    t.string "password_digest", null: false, comment: "パスワード"
    t.string "kb_be_in_change", limit: 2, comment: "担当区分, 0：運営者、1：アシスタント、2:リサーチ外注、3:出品外注"
    t.integer "del_flg", comment: "削除フラグ"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_m_users_on_email", unique: true
  end

  create_table "t_accounts", primary_key: "account_info_id", id: { type: :integer, comment: "アカウント情報ID" }, charset: "utf8mb4", force: :cascade do |t|
    t.bigint "account_id"
    t.bigint "user_id"
    t.integer "del_flg", comment: "削除フラグ"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["account_id"], name: "index_t_accounts_on_account_id"
    t.index ["user_id"], name: "index_t_accounts_on_user_id"
  end

  create_table "t_cheapast_prices", primary_key: "cheapast_info_id", id: { type: :integer, comment: "最安値情報ID" }, charset: "utf8mb4", force: :cascade do |t|
    t.bigint "t_listing_detail_id"
    t.integer "listing_price", comment: "出品価格"
    t.string "listing_img_file_name", comment: "出品画像ファイル名"
    t.string "listing_page_url", comment: "出品ページURL"
    t.integer "del_flg", comment: "削除フラグ"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["t_listing_detail_id"], name: "index_t_cheapast_prices_on_t_listing_detail_id"
  end

  create_table "t_colors", primary_key: "color_info_id", id: { type: :integer, comment: "色情報ID" }, charset: "utf8mb4", force: :cascade do |t|
    t.bigint "systecolor_id"
    t.string "size_name", null: false, comment: "色名"
    t.bigint "t_listing_detail_id"
    t.integer "del_flg", comment: "削除フラグ"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["systecolor_id"], name: "index_t_colors_on_systecolor_id"
    t.index ["t_listing_detail_id"], name: "index_t_colors_on_t_listing_detail_id"
  end

  create_table "t_contact_orders", primary_key: "contact_order_info_id", id: { type: :integer, comment: "お問い合わせ情報・注文ID" }, charset: "utf8mb4", force: :cascade do |t|
    t.integer "transaction_id", null: false, comment: "取引ID"
    t.timestamp "contact_at", comment: "お問い合わせ日"
    t.string "product_url", comment: "お問い合わせ商品URL"
    t.integer "buyer_location_id", comment: "買付先ID"
    t.integer "brand_id", comment: "ブランドID"
    t.string "costomer_name", comment: "お客様名"
    t.string "for_reply_url", comment: "返信用URL"
    t.integer "purchase_price_foreign_currency", comment: "仕入れ価格（外貨）"
    t.integer "purchase_price", comment: "仕入れ価格, 買付スタッフに支払う報酬"
    t.integer "tax", comment: "税金（tax）※アメリカ・カナダ"
    t.integer "shipping", comment: "送料"
    t.integer "reward_price", comment: "報酬金額"
    t.integer "packing_cost", comment: "梱包費, 出品価格*7%（切り上げ）"
    t.integer "traffic_cost", comment: "交通費, 成約手数料*10%（切り上げ）"
    t.integer "other_cost", comment: "その他経費"
    t.integer "contract_fee", comment: "成約手数料, 出品価格-(仕入れ価格+税金（tax）+送料+報酬金額+梱包費+交通費+その他経費+成約手数料+成約手数料（消費税）)"
    t.integer "contract_fee_consumption_tax", comment: "成約手数料（消費税）"
    t.integer "selling_price", comment: "出品価格"
    t.integer "profit", comment: "利益"
    t.integer "order_confirm_flg", comment: "注文確定フラグ"
    t.integer "del_flg", comment: "削除フラグ"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "t_contact_senders", primary_key: "contact_sender_id", id: { type: :integer, comment: "お問い合わせ送信者ID" }, charset: "utf8mb4", force: :cascade do |t|
    t.string "contact_sender_name", null: false, comment: "お問い合わせ送信者名"
    t.integer "del_flg", comment: "削除フラグ"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "t_contacts", primary_key: "contact_info_id", id: { type: :integer, comment: "お問い合わせ情報ID" }, charset: "utf8mb4", force: :cascade do |t|
    t.text "contact_message", null: false, comment: "お問い合わせメッセージ"
    t.bigint "t_listing_detail_id"
    t.bigint "t_contact_sender_id"
    t.timestamp "contact_send_date", comment: "お問い合わせ送信日"
    t.integer "customer_send_flg", comment: "お客様送信フラグ, 0:お客様、1:ショッパー"
    t.integer "del_flg", comment: "削除フラグ"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["t_contact_sender_id"], name: "index_t_contacts_on_t_contact_sender_id"
    t.index ["t_listing_detail_id"], name: "index_t_contacts_on_t_listing_detail_id"
  end

  create_table "t_delivery_methods", primary_key: "delivery_method_info_id", id: { type: :integer, comment: "配送方法情報ID" }, charset: "utf8mb4", force: :cascade do |t|
    t.bigint "delivery_method_id"
    t.bigint "t_listing_detail_id"
    t.integer "del_flg", comment: "削除フラグ"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["delivery_method_id"], name: "index_t_delivery_methods_on_delivery_method_id"
    t.index ["t_listing_detail_id"], name: "index_t_delivery_methods_on_t_listing_detail_id"
  end

  create_table "t_inventory_checks", primary_key: "inventory_check_info_id", id: { type: :integer, comment: "在庫確認情報ID" }, charset: "utf8mb4", force: :cascade do |t|
    t.integer "inventory_check_status", comment: "在庫確認状態, 0:在庫確認依頼中、1:在庫なし、2:在庫あり、3:返信待ち、4:対応済"
    t.bigint "buyer_location_id"
    t.bigint "t_contact_order_id"
    t.integer "inventory_check_priority", comment: "在庫確認優先順位, 0:優先順位高、1:優先順位中、優先順位小"
    t.integer "del_flg", comment: "削除フラグ"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["buyer_location_id"], name: "index_t_inventory_checks_on_buyer_location_id"
    t.index ["t_contact_order_id"], name: "index_t_inventory_checks_on_t_contact_order_id"
  end

  create_table "t_inventory_exists", primary_key: "inventory_exist_info_id", id: { type: :integer, comment: "在庫有無情報ID" }, charset: "utf8mb4", force: :cascade do |t|
    t.bigint "t_size_id"
    t.bigint "inventor_id"
    t.bigint "t_listing_detail_id"
    t.integer "del_flg", comment: "削除フラグ"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["inventor_id"], name: "index_t_inventory_exists_on_inventor_id"
    t.index ["t_listing_detail_id"], name: "index_t_inventory_exists_on_t_listing_detail_id"
    t.index ["t_size_id"], name: "index_t_inventory_exists_on_t_size_id"
  end

  create_table "t_listing_details", primary_key: "listing_detail_info_id", id: { type: :integer, comment: "出品明細情報ID" }, charset: "utf8mb4", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "account_id"
    t.string "buyma_url", comment: "BUYMA_URL"
    t.string "supplier_url", comment: "仕入れ先_URL"
    t.string "product_name", comment: "商品名"
    t.text "product_comment", comment: "商品コメント"
    t.bigint "category_large_id"
    t.bigint "category_midium_id"
    t.bigint "category_small_id"
    t.bigint "brand_id"
    t.bigint "model_id"
    t.bigint "seazon_id"
    t.bigint "theme_id"
    t.string "color_size_repletion_info", comment: "色・サイズ補足情報"
    t.string "purchase_deadline", limit: 8, comment: "購入期限"
    t.bigint "buyer_location_id"
    t.bigint "buyer_shop_id"
    t.bigint "shipping_location_id"
    t.integer "purchase_price_foreign_currency", comment: "仕入れ価格（外貨）"
    t.integer "purchase_price", comment: "仕入れ価格"
    t.integer "listing_price", comment: "出品価格"
    t.integer "reference_price_regular_listing_price", comment: "参考価格/通常出品価格, 0:設定しない、1:参考価格、2:通常出品価格"
    t.integer "reference_price", comment: "参考価格"
    t.string "cheapast_price_url", comment: "最安値URL"
    t.string "rsch_at", limit: 8, comment: "リサーチ日付"
    t.boolean "rsch_be_in_change_progress", comment: "リサーチ担当者様進捗, 0:未完了、1:完了"
    t.string "listing_at", limit: 8, comment: "出品日付"
    t.boolean "listing_be_in_change_progress", comment: "出品担当者様進捗, 0:未完了、1:完了"
    t.integer "tariffs", comment: "関税, 0:別途関税払い、1:関税込み（購入者の負担なし）"
    t.text "listing_memo", comment: "出品メモ"
    t.text "buyer_memo", comment: "買付先メモ"
    t.string "featured_keyword", comment: "注目キーワード"
    t.bigint "rsch_account_id"
    t.string "rsch_account_listing_date", limit: 8, comment: "リサーチアカウント出品日付"
    t.integer "access_count", comment: "アクセス数"
    t.integer "favorite_count", comment: "お気に入り登録数"
    t.text "remarks", comment: "備考"
    t.bigint "rsch_method_id"
    t.integer "del_flg", comment: "削除フラグ"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["account_id"], name: "index_t_listing_details_on_account_id"
    t.index ["brand_id"], name: "index_t_listing_details_on_brand_id"
    t.index ["buyer_location_id"], name: "index_t_listing_details_on_buyer_location_id"
    t.index ["buyer_shop_id"], name: "index_t_listing_details_on_buyer_shop_id"
    t.index ["category_large_id"], name: "index_t_listing_details_on_category_large_id"
    t.index ["category_midium_id"], name: "index_t_listing_details_on_category_midium_id"
    t.index ["category_small_id"], name: "index_t_listing_details_on_category_small_id"
    t.index ["model_id"], name: "index_t_listing_details_on_model_id"
    t.index ["rsch_account_id"], name: "index_t_listing_details_on_rsch_account_id"
    t.index ["rsch_method_id"], name: "index_t_listing_details_on_rsch_method_id"
    t.index ["seazon_id"], name: "index_t_listing_details_on_seazon_id"
    t.index ["shipping_location_id"], name: "index_t_listing_details_on_shipping_location_id"
    t.index ["theme_id"], name: "index_t_listing_details_on_theme_id"
    t.index ["user_id"], name: "index_t_listing_details_on_user_id"
  end

  create_table "t_listing_headers", primary_key: "listing_header_info_id", id: { type: :integer, comment: "出品ヘッダー情報ID" }, charset: "utf8mb4", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "account_id"
    t.string "item_name", null: false, comment: "項目名"
    t.integer "kb_input", comment: "入力区分, 0:未入力（テキスト）、1:テキストボックス、2:コンボボックス、3:テキストエリア、4:日付入力、5;画像選択、6:未入力（チップ）、7:ボタン"
    t.boolean "kb_require", comment: "必須区分, 0:任意、1:必須"
    t.boolean "kb_active", comment: "活性区分, 0:非活性、1:活性"
    t.boolean "kb_display", comment: "表示区分, 0:非表示、1:表示"
    t.integer "del_flg", comment: "削除フラグ"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["account_id"], name: "index_t_listing_headers_on_account_id"
    t.index ["user_id"], name: "index_t_listing_headers_on_user_id"
  end

  create_table "t_listing_imgs", primary_key: "listing_img_id", id: { type: :integer, comment: "出品画像ID" }, charset: "utf8mb4", force: :cascade do |t|
    t.string "listing_img_file_name", null: false, comment: "出品画像ファイル名"
    t.bigint "t_listing_detail_id"
    t.integer "del_flg", comment: "削除フラグ"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["t_listing_detail_id"], name: "index_t_listing_imgs_on_t_listing_detail_id"
  end

  create_table "t_model_numbers", primary_key: "model_number_info_id", id: { type: :integer, comment: "型番情報ID" }, charset: "utf8mb4", force: :cascade do |t|
    t.string "model_number_name", comment: "型番名"
    t.bigint "t_listing_detail_id"
    t.integer "del_flg", comment: "削除フラグ"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["t_listing_detail_id"], name: "index_t_model_numbers_on_t_listing_detail_id"
  end

  create_table "t_sizes", primary_key: "size_info_id", id: { type: :integer, comment: "サイズ情報ID" }, charset: "utf8mb4", force: :cascade do |t|
    t.bigint "jp_size_id"
    t.string "size_name", null: false, comment: "サイズ名"
    t.bigint "t_listing_detail_id"
    t.integer "del_flg", comment: "削除フラグ"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["jp_size_id"], name: "index_t_sizes_on_jp_size_id"
    t.index ["t_listing_detail_id"], name: "index_t_sizes_on_t_listing_detail_id"
  end

  create_table "t_tags", primary_key: "tag_info_id", id: { type: :integer, comment: "タグ情報ID" }, charset: "utf8mb4", force: :cascade do |t|
    t.bigint "tag_id"
    t.bigint "t_listing_detail_id"
    t.integer "del_flg", comment: "削除フラグ"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["t_listing_detail_id"], name: "index_t_tags_on_t_listing_detail_id"
    t.index ["tag_id"], name: "index_t_tags_on_tag_id"
  end

end
