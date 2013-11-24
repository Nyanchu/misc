#
# 英単語ファイルを扱う関数群
#

# 英単語ファイル
filePath="englishWordList.txt"


# 英単語ワードリストを取得
getWordList()
{
    # 作業用ファイルを作成
    originalFilePath=$filePath
    tmpFilePath="tmpFile.txt"
    cp $originalFilePath $tmpFilePath
    
    # 不要な行を削除
    deleteUnusedLine $tmpFilePath
    # 英単語を検索して取得
    # 長い順に整列
    # 作業用ファイルを削除
    rm $tmpFilePath
}

# 英単語ファイルから不要な表を削除
deleteUnusedLine()
{
    filePath=$1

    # 1文字だけの単語を削除
    # -iオプションが引数なしで動作してくれないsedだったのでバックアップファイルを作って消す
    sed -i'.bak' -e '/^[[:alpha:]]\{1\}$/d' $filePath
    rm ${filePath}.bak
}
