class TContactOrder < ApplicationRecord

  # カラム名 お問い合わせ情報・注文ID
  COL_NAME_CONTACT_ORDER_INFO_ID = "contact_order_info_id"

  # カラム名 取引ID
  COL_NAME_TRANSACTION_ID = "transaction_id"

  # カラム名 お問い合わせ日
  COL_NAME_CONTACT_AT = "contact_at"

  # カラム名 お問い合わせ商品URL
  COL_NAME_PRODUCT_URL = "product_url"

  # カラム名 買付先ID
  COL_NAME_BUYER_LOCATION_ID = "buyer_location_id"

  # カラム名 ブランドID
  COL_NAME_BRAND_ID = "brand_id"

  # カラム名 お客様名
  COL_NAME_COSTOMER_NAME = "costomer_name"

  # カラム名 返信用URL
  COL_NAME_FOR_REPLY_URL = "for_reply_url"

  # カラム名 仕入れ価格（外貨）
  COL_NAME_PURCHASE_PRICE_FOREIGN_CURRENCY = "purchase_price_foreign_currency"

  # カラム名 仕入れ価格
  COL_NAME_PURCHASE_PRICE = "purchase_price"

  # カラム名 税金（tax）※アメリカ・カナダ
  COL_NAME_TAX = "tax"

  # カラム名 送料
  COL_NAME_SHIPPING = "shipping"

  # カラム名 報酬金額
  COL_NAME_REWARD_PRICE = "reward_price"

  # カラム名 梱包費
  COL_NAME_PACKING_COST = "packing_cost"

  # カラム名 交通費
  COL_NAME_TRAFFIC_COST = "traffic_cost"

  # カラム名 その他経費
  COL_NAME_OTHER_COST = "other_cost"

  # カラム名 成約手数料
  COL_NAME_CONTRACT_FEE = "contract_fee"

  # カラム名 成約手数料（消費税）
  COL_NAME_CONTRACT_FEE_CONSUMPTION_TAX = "contract_fee_consumption_tax"

  # カラム名 出品価格
  COL_NAME_SELLING_PRICE = "selling_price"

  # カラム名 利益
  COL_NAME_PROFIT = "profit"

  # カラム名 注文確定フラグ
  COL_NAME_ORDER_CONFIRM_FLG = "order_confirm_flg"

end
