class TListingDetail < ApplicationRecord

  # カラム名 出品明細情報ID
  COL_NAME_LISTING_DETAIL_INFO_ID = "listing_detail_info_id"

  # カラム名 ユーザーID
  COL_NAME_USER_ID = "user_id"

  # カラム名 アカウントID
  COL_NAME_ACCOUNT_ID = "account_id"

  # カラム名 BUYMA_URL
  COL_NAME_BUYMA_URL = "buyma_url"

  # カラム名 仕入れ先_URL
  COL_NAME_SUPPLIER_URL = "supplier_url"

  # カラム名 商品名
  COL_NAME_PRODUCT_NAME = "product_name"

  # カラム名 商品コメント
  COL_NAME_PRODUCT_COMMENT = "product_comment"

  # カラム名 カテゴリ大ID
  COL_NAME_CATEGORY_LARGE_ID = "category_large_id"

  # カラム名 カテゴリ中ID
  COL_NAME_CATEGORY_MIDIUM_ID = "category_midium_id"

  # カラム名 カテゴリ小ID
  COL_NAME_CATEGORY_SMALL_ID = "category_small_id"

  # カラム名 ブランドID
  COL_NAME_BRAND_ID = "brand_id"

  # カラム名 モデルID
  COL_NAME_MODEL_ID = "model_id"

  # カラム名 シーズンID
  COL_NAME_SEAZON_ID = "seazon_id"

  # カラム名 テーマID
  COL_NAME_THEME_ID = "theme_id"

  # カラム名 色・サイズ補足情報
  COL_NAME_COLOR_SIZE_REPLETION_INFO = "color_size_repletion_info"

  # カラム名 購入期限
  COL_NAME_PURCHASE_DEADLINE = "purchase_deadline"

  # カラム名 買付先ID
  COL_NAME_BUYER_LOCATION_ID = "buyer_location_id"

  # カラム名 買付先ショップID
  COL_NAME_BUYER_SHOP_ID = "buyer_shop_id"

  # カラム名 発送先ID
  COL_NAME_SHIPPING_LOCATION_ID = "shipping_location_id"

  # カラム名 仕入れ価格（外貨）
  COL_NAME_PURCHASE_PRICE_FOREIGN_CURRENCY = "purchase_price_foreign_currency"

  # カラム名 仕入れ価格
  COL_NAME_PURCHASE_PRICE = "purchase_price"

  # カラム名 出品価格
  COL_NAME_LISTING_PRICE = "listing_price"

  # カラム名 参考価格/通常出品価格
  COL_NAME_REFERENCE_PRICE_REGULAR_LISTING_PRICE = "reference_price_regular_listing_price"

  # カラム名 参考価格
  COL_NAME_REFERENCE_PRICE = "reference_price"

  # カラム名 最安値URL
  COL_NAME_CHEAPAST_PRICE_URL = "cheapast_price_url"

  # カラム名 リサーチ日付
  COL_NAME_RSCH_AT = "rsch_at"

  # カラム名 リサーチ担当者様進捗
  COL_NAME_RSCH_BE_IN_CHANGE_PROGRESS = "rsch_be_in_change_progress"

  # カラム名 出品日付
  COL_NAME_LISTING_AT = "listing_at"

  # カラム名 出品担当者様進捗
  COL_NAME_LISTING_BE_IN_CHANGE_PROGRESS = "listing_be_in_change_progress"

  # カラム名 関税
  COL_NAME_TARIFFS = "tariffs"

  # カラム名 出品メモ
  COL_NAME_LISTING_MEMO = "listing_memo"

  # カラム名 買付先メモ
  COL_NAME_BUYER_MEMO = "buyer_memo"

  # カラム名 注目キーワード
  COL_NAME_FEATURED_KEYWORD = "featured_keyword"

  # カラム名 リサーチアカウントID
  COL_NAME_RSCH_ACCOUNT_ID = "rsch_account_id"

  # カラム名 リサーチアカウント出品日付
  COL_NAME_RSCH_ACCOUNT_LISTING_DATE = "rsch_account_listing_date"

  # カラム名 アクセス数
  COL_NAME_ACCESS_COUNT = "access_count"

  # カラム名 お気に入り登録数
  COL_NAME_FAVORITE_COUNT = "favorite_count"

  # カラム名 備考
  COL_NAME_REMARKS = "remarks"

  # カラム名 リサーチ方法ID
  COL_NAME_RSCH_METHOD_ID = "rsch_method_id"

    # 出品ヘッダー一覧の取得
    # @param [string] user_id ユーザーID
    # @param [string] account_id アカウントID
    # return 出品ヘッダー一覧
    def get_listing_detail_list(user_id, account_id)
      return TListingDetail.select(:listing_detail_info_id,
                                    :buyma_url,
                                    :supplier_url,
                                    :product_name,
                                    :product_comment,
                                    :category_large_id,
                                    :category_midium_id,
                                    :category_small_id,
                                    :brand_id,
                                    :model_id,
                                    :seazon_id,
                                    :theme_id,
                                    :color_size_repletion_info,
                                    :purchase_deadline,
                                    :buyer_location_id,
                                    :buyer_shop_id,
                                    :shipping_location_id,
                                    :purchase_price_foreign_currency,
                                    :purchase_price,
                                    :listing_price,
                                    :reference_price_regular_listing_price,
                                    :reference_price,
                                    :cheapast_price_url,
                                    :rsch_at,
                                    :rsch_be_in_change_progress,
                                    :listing_at,
                                    :listing_be_in_change_progress,
                                    :tariffs,
                                    :listing_memo,
                                    :buyer_memo,
                                    :featured_keyword,
                                    :rsch_account_id,
                                    :rsch_account_listing_date,
                                    :access_count,
                                    :favorite_count,
                                    :remarks,
                                    :rsch_method_id
                                    )
                                    .where(user_id: user_id, account_id: account_id, del_flg: AppConstants::FG_OFF)
  end

end
