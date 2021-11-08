class LoginController < ApplicationController

    def login
        m_user = MUser.new
        m_user = m_user.get_login_info(params[:email])
        if m_user && m_user.authenticate(params[:password])
            render json: { data: { id: m_user.id } } 
        else
            render json: { data: "" }
        end
    end

end
