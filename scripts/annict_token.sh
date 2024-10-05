#!/bin/bash

# トークンを取得
access_token="$1"

# JSON生成
json=$(
	cat <<EOF
{
  "access_token": "$access_token",
  "token_type": "Bearer",
  "expiry": "0001-01-01T00:00:00Z"
}
EOF
)

# token/token-annict.json に出力
echo "$json" >$GITHUB_ACTION_PATH/token/token-annict.json

# 確認メッセージ
echo "::notice::JSONファイルが token/token-annict.json に保存されました。"
