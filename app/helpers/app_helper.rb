module AppHelper

    # 出品ヘッダー配列の一覧
    # @param [string] listing_header_list 出品ヘッダー一覧
    # @param [string] header_list 出品ヘッダー列一覧
    def conv_to_listing_header_list(listing_header_list, header_list)
        listing_header_list.each{|listing_header|
            header_list[AppConstants::ITEM_NAME_LIST].push(listing_header.item_name)
            header_list[AppConstants::KB_INPUT_LIST].push(listing_header.kb_input)
            header_list[AppConstants::KB_REQUIRE_LIST].push(listing_header.kb_require)
            header_list[AppConstants::KB_ACTIVE_LIST].push(listing_header.kb_active)
            header_list[AppConstants::KB_DISPLAY_LIST].push(listing_header.kb_display)
        }
    end

end