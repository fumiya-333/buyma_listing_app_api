class SignInController < ApplicationController
    include JwtHelper, FileHelper

    # ログイン処理
    # return レスポンス
    def sign_in
        begin
            # pemファイル読み込み
            # pem = readFile(AppConstants::FILE_PATH_JWT_PEM)
            m_user = MUser.new
            m_user.set_login_info(m_user, params[:email])
            if !m_user.user_id.blank? && m_user.authenticate(params[:password])
                token = get_token({ user_id: m_user.user_id }, @rsa_private)
                response_success({ token: token })
            else
                response_not_found({ message: AppConstants::ERR_MSG_INPUT_SIGN_IN })
            end
        rescue SystemCallError => e
            response_internal_server_error({ message: e.message })
        rescue IOError => e
            response_internal_server_error({ message: e.message })
        end
    end

end
