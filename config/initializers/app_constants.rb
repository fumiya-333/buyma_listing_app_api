module AppConstants 

    # フラグオフ
    FG_OFF = "0"
    # フラグオン
    FG_ON = "1"

    # エラーメッセージ ログインエラー
    MESSAGE_INPUT_SIGN_IN_ERR = "入力したログイン情報が存在しません。正しいログイン情報を入力してください。"

    # assetsフォルダパス
    FOLDER_PATH_CONFIG = "#{Rails.root}/config"

    # 拡張子 pem
    EXTENSTION_PEM = ".pem"

    # jwt pemファイルパス
    FILE_PATH_JWT_PEM = FOLDER_PATH_CONFIG + "/jwt_202111220749" + EXTENSTION_PEM

end