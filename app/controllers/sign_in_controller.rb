class SignInController < ApplicationController
    include JwtHelper, FileHelper

    # ログイン処理
    # return レスポンス
    def sign_in
        begin
            # pemファイル読み込み
            pem = readFile(AppConstants::FILE_PATH_JWT_PEM)
            m_user = MUser.new
            m_user.set_login_info(m_user, params[:email])
            if !m_user.blank? && m_user.authenticate(params[:password])
                token = get_token({ id: m_user.id }, get_rsa_private(pem))
                response_success({ token: token })
            else
                response_not_found({ message: AppConstants::MESSAGE_INPUT_SIGN_IN_ERR })
            end
        rescue SystemCallError => e
            response_internal_server_error({ message: e.message })
        rescue IOError => e
            response_internal_server_error({ message: e.message })
        end
    end

end
