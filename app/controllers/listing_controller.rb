class ListingController < ApplicationController
    include AppHelper

    # 初期処理
    # return レスポンス
    def index
        begin
            response_success({ header_list: get_listing_header_list, listing_detail_list: get_listing_detail_list })
        rescue SystemCallError => e
            response_internal_server_error({ message: e.message })
        rescue IOError => e
            response_internal_server_error({ message: e.message })
        end
    end

    # 出品ヘッダー一覧取得
    def get_listing_header_list
        t_listing_header = TListingHeader.new
        listing_header_list = t_listing_header.get_listing_header_list(@user_id, @t_account.account_id)

        header_list = { AppConstants::ITEM_NAME_LIST => [], AppConstants::KB_INPUT_LIST => [], AppConstants::KB_REQUIRE_LIST => [], AppConstants::KB_ACTIVE_LIST => [], AppConstants::KB_DISPLAY_LIST => [] }
        conv_to_listing_header_list(listing_header_list, header_list)

        return header_list
    end

    # 出品明細一覧取得
    def get_listing_detail_list
        t_listing_detail = TListingDetail.new
        return t_listing_detail.get_listing_detail_list(@user_id, @t_account.account_id)
    end
end
