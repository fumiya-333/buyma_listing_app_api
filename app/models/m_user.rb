class MUser < ApplicationRecord

    has_secure_password
    
    # ログイン情報の取得
    # @param [MUser] m_user ユーザー情報
    # @param [string] email メールアドレス
    # return ログイン情報
    def set_login_info(m_user, email)
        result = MUser.select(:id, :email, :password_digest).where(email: email, del_flg: AppConstants::FG_OFF)
        if !result.blank?
            m_user.id = (result.to_a)[0].id
            m_user.email = (result.to_a)[0].email
            m_user.password_digest = (result.to_a)[0].password_digest
        end
    end
end
