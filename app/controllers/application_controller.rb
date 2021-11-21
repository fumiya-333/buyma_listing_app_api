class ApplicationController < ActionController::API

    # レスポンス返却（200 Success）
    # @param [object] res レスポンス
    # return レスポンス
    def response_success(res)
        render status: 200, json: res
    end

    # レスポンス返却（400 Bad Request）
    # @param [object] res レスポンス
    # return レスポンス
    def response_bad_request(res)
        render status: 400, json: res
    end

    # レスポンス返却（404 Not Found）
    # @param [object] res レスポンス
    # return レスポンス
    def response_not_found(res)
        render status: 404, json: res
    end

    # レスポンス返却（409 Conflict）
    # @param [object] res レスポンス
    # return レスポンス
    def response_conflict(res)
        render status: 409, json: res
    end

    # レスポンス返却（500 Conflict）
    # @param [object] res レスポンス
    # return レスポンス
    def response_internal_server_error
        render status: 500, json: res
    end
end
