class ApplicationController < ActionController::API
    include JwtHelper, FileHelper
    before_action :base_action

    # 共通処理
    def base_action
        # pemファイル読み込み
        pem = readFile(AppConstants::FILE_PATH_JWT_PEM)
        # 秘密鍵
        @rsa_private = get_rsa_private(pem)

        if !params[:token].blank?
            sign_up_base_aciton
        end
    end

    # 共通処理（ログイン後）
    def sign_up_base_aciton
        decoded_token = decode(params[:token], @rsa_private)
        @user_id = decoded_token[0][MUser::COL_NAME_USER_ID]
        @t_account = TAccount.new
        @t_account.set_account_info(@t_account, @user_id)
    end

    # レスポンス返却（200 Success）
    # @param [object] res レスポンス
    # return レスポンス
    def response_success(res)
        render status: 200, json: res
    end

    # レスポンス返却（400 Bad Request）
    # @param [object] res レスポンス
    # return レスポンス
    def response_bad_request(res)
        render status: 400, json: res
    end

    # レスポンス返却（404 Not Found）
    # @param [object] res レスポンス
    # return レスポンス
    def response_not_found(res)
        render status: 404, json: res
    end

    # レスポンス返却（409 Conflict）
    # @param [object] res レスポンス
    # return レスポンス
    def response_conflict(res)
        render status: 409, json: res
    end

    # レスポンス返却（500 Conflict）
    # @param [object] res レスポンス
    # return レスポンス
    def response_internal_server_error(res)
        render status: 500, json: res
    end
end
