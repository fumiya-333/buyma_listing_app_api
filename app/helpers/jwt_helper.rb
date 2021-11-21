module JwtHelper
    require 'jwt'
    ALGORITHM_KEY = 'RS256'

    # 秘密鍵の取得
    # @param [string] pem
    # return 秘密鍵
    def get_rsa_private(pem)
        return OpenSSL::PKey::RSA.new(pem)
    end

    # トークンの取得
    # @param [object] payload ペイロード
    # @param [object] rsa_private 秘密鍵 
    # return トークン
    def get_token(payload, rsa_private)
        return JWT.encode payload, rsa_private, ALGORITHM_KEY
    end

    # デコードを行う
    # @param [object] token トークン
    # @param [object] rsa_private 秘密鍵 
    # return デコードした結果
    def decode(token, rsa_private)
        return JWT.decode token, rsa_private, true, { algorithm: ALGORITHM_KEY }
    end

end