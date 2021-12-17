class MAccount < ApplicationRecord

  # カラム名 アカウントID
  COL_NAME_ACCOUNT_ID = "account_id"

  # カラム名 アカウント名
  COL_NAME_ACCOUNT_NAME = "account_name"

  # カラム名 ユーザーID
  COL_NAME_USER_ID = "user_id"

  # アカウント一覧取得
  # @param [string] user_id ユーザーID
  # return アカウント一覧
  def find_account_list(user_id)
    return result = MAccount.select(:account_id, :account_name).where(user_id: user_id, del_flg: AppConstants::FG_OFF)
  end
end
