module AppConstants 

    # フラグオフ
    FG_OFF = "0"
    # フラグオン
    FG_ON = "1"

    # ログインエラー エラーメッセージ
    ERR_MSG_INPUT_SIGN_IN = "入力したログイン情報が存在しません。正しいログイン情報を入力してください。"

    # assetsフォルダパス
    FOLDER_PATH_CONFIG = "#{Rails.root}/config"

    # 拡張子 pem
    EXTENSTION_PEM = ".pem"

    # jwt pemファイルパス
    FILE_PATH_JWT_PEM = FOLDER_PATH_CONFIG + "/jwt_202111220749" + EXTENSTION_PEM

    # 正規表現 メールアドレス
    VALID_EMAIL_REGEX = /\A[A-Za-z0-9]{1}[A-Za-z0-9_.-]*@{1}[A-Za-z0-9_.-]{1,}\.[A-Za-z0-9]{1,}\z/

    # 項目名リスト
    ITEM_NAME_LIST = "item_name_list"
    # 入力区分リスト
    KB_INPUT_LIST = "kb_input_list"
    # 必須区分リスト
    KB_REQUIRE_LIST = "kb_require_list"
    # 活性区分リスト
    KB_ACTIVE_LIST = "kb_active_list"
    # 表示区分リスト
    KB_DISPLAY_LIST = "kb_display_list"
end