class TContact < ApplicationRecord

  # カラム名 お問い合わせ情報ID
  COL_NAME_CONTACT_INFO_ID = "contact_info_id"

  # カラム名 お問い合わせメッセージ
  COL_NAME_CONTACT_MESSAGE = "contact_message"

  # カラム名 出品明細情報ID
  COL_NAME_LISTING_DETAIL_INFO_ID = "listing_detail_info_id"

  # カラム名 お問い合わせ送信者ID
  COL_NAME_CONTACT_SENDER_ID = "contact_sender_id"

  # カラム名 お問い合わせ送信日
  COL_NAME_CONTACT_SEND_DATE = "contact_send_date"

  # カラム名 お客様送信フラグ
  COL_NAME_CUSTOMER_SEND_FLG = "customer_send_flg"

end
