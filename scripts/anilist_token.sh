#!/bin/bash

# トークンを取得
access_token="$1"
refresh_token="$2"

# 1年後の日付を計算 (ISO8601フォーマット)
expiry=$(date -d '+1 year' --iso-8601=seconds)

# JSON生成
json=$(
	cat <<EOF
{
  "access_token": "$access_token",
  "token_type": "Bearer",
  "refresh_token": "$refresh_token",
  "expiry": "$expiry"
}
EOF
)

# token/token-anilist.json に出力
echo "$json" >$GITHUB_ACTION_PATH/token/token-anilist.json

# 確認メッセージ
echo "::notice::JSONファイルが token/token-anilist.json に保存されました。"
echo "::notice::有効期限: $expiry"
