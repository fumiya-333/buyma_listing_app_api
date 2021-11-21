module FileHelper

    # ファイル読み込み
    # @param [string] path ファイルパス 
    # return ファイル読み込み結果
    def readFile(path)
        return File.read(path)
    end

end