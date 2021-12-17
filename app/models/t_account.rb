class TAccount < ApplicationRecord

  # カラム名 アカウント情報ID
  COL_NAME_ACCOUNT_INFO_ID = "account_info_id"

  # アカウント情報取得
  # @param [TAccount] t_account アカウント情報
  # @param [string] user_id ユーザーID
  # return アカウント情報
  def set_account_info(t_account, user_id)
    result = TAccount.select(:account_info_id, :account_id).where(user_id: user_id, del_flg: AppConstants::FG_OFF)
    if !result.blank?
      t_account.account_info_id = (result.to_a)[0].account_info_id
      t_account.account_id = (result.to_a)[0].account_id
    end
  end

end
