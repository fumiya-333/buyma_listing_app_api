class TListingHeader < ApplicationRecord
    
    # カラム名 出品明細ID
    COL_NAME_LISTING_HEADER_INFO_ID = "listing_header_info_id"

    # カラム名 項目名
    COL_NAME_ITEM_NAME = "item_name"

    # カラム名 入力区分
    COL_NAME_KB_INPUT = "kb_input"

    # カラム名 必須区分
    COL_NAME_KB_REQUIRE = "kb_require"

    # カラム名 活性区分
    COL_NAME_KB_ACTIVE = "kb_active"

    # カラム名 表示区分
    COL_NAME_KB_DISPLAY = "kb_display"

    # 出品ヘッダー一覧の取得
    # @param [string] user_id ユーザーID
    # @param [string] account_id アカウントID
    # return 出品ヘッダー一覧
    def get_listing_header_list(user_id, account_id)
        return TListingHeader.select(:item_name, :kb_input, :kb_require, :kb_active, :kb_display).where(user_id: user_id, account_id: account_id, del_flg: AppConstants::FG_OFF)
    end
end
