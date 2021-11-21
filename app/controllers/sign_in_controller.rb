class SignInController < ApplicationController
    include JwtHelper

    def sign_in
        m_user = MUser.new
        m_user = m_user.get_login_info(params[:email])
        if !m_user.blank? && m_user.authenticate(params[:password])
            token = get_token({ id: m_user.id }, get_rsa_private())
            response_success({ token: token })
        else
            response_not_found({ message: AppConstants::INPUT_SIGN_IN_ERR })
        end
    end

end
