class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  # カラム名
  COL_NAME_DEL_FLG = "del_flg"

  # 入力チェック 削除区分
  validates :del_flg, presence: true
end
