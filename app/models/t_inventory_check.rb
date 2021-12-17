class TInventoryCheck < ApplicationRecord

  # カラム名 在庫確認情報ID
  COL_NAME_INVENTORY_CHECK_INFO_ID = "inventory_check_info_id"

  # カラム名 在庫確認状態
  COL_NAME_INVENTORY_CHECK_STATUS = "inventory_check_status"

  # カラム名 買付先ID
  COL_NAME_BUYER_LOCATION_ID = "buyer_location_id"

  # カラム名 お問い合わせ情報・注文ID
  COL_NAME_CONTACT_ORDER_INFO_ID = "contact_order_info_id"

  # カラム名 在庫確認優先順位
  COL_NAME_INVENTORY_CHECK_PRIORITY = "inventory_check_priority"

end
