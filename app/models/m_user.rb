class MUser < ApplicationRecord

    has_secure_password
    
    def get_login_info(email)
        result = MUser.select(:id, :email, :password_digest).where(email: email, del_flg: AppConstants::FG_OFF)
        mUser = nil

        if !result.blank?
            mUser = MUser.new
            mUser.id = (result.to_a)[0].id
            mUser.email = (result.to_a)[0].email
            mUser.password_digest = (result.to_a)[0].password_digest
        end

        return mUser
    end
end
