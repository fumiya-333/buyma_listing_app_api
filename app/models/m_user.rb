class MUser < ApplicationRecord

    # カラム名 ユーザーID
    COL_NAME_USER_ID = "user_id"

    # カラム名 ユーザー名
    COL_NAME_NAME = "name"

    # カラム名 メールアドレス
    COL_NAME_EMAIL = "email"

    # カラム名 パスワード
    COL_NAME_PASSWORD_DIGEST = "password_digest"

    # カラム名 担当区分
    COL_NAME_KB_BE_IN_CHANGE = "kb_be_in_change"

    # パスワード設定・認証メソッド
    has_secure_password

    # 入力チェック ユーザーID
    validates :user_id, presence: true
    # 入力チェック ユーザー名
    validates :name, presence: true, length: { maximum: 255 }
    # 入力チェック メールアドレス
    validates :email, presence: true, length: { maximum: 255 }, format: { with: AppConstants::VALID_EMAIL_REGEX }, uniqueness: { case_sensitive: false }
    # 入力チェック パスワード
    validates :password_digest, presence: true
    # 入力チェック 担当区分
    validates :kb_be_in_change, presence: true, length: { maximum: 2 }
    
    # ログイン情報の設定
    # @param [MUser] m_user ユーザー情報
    # @param [string] email メールアドレス
    def set_login_info(m_user, email)
        result = MUser.select(:user_id, :email, :password_digest).where(email: email, del_flg: AppConstants::FG_OFF)
        if !result.blank?
            m_user.user_id = (result.to_a)[0].user_id
            m_user.email = (result.to_a)[0].email
            m_user.password_digest = (result.to_a)[0].password_digest
        end
    end
    
end
