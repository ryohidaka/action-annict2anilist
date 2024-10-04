# action-annict2anilist

[![GitHub Release](https://img.shields.io/github/v/release/ryohidaka/action-annict2anilist)](https://github.com/ryohidaka/action-annict2anilist/releases/)
[![Test Action](https://github.com/ryohidaka/action-annict2anilist/actions/workflows/test.yml/badge.svg)](https://github.com/ryohidaka/action-annict2anilist/actions/workflows/test.yml)

Annict から AniList にライブラリを同期する `annict2anilist` を実行する GitHub Actions.

## Usage

```yml
on: [push]

permissions:
  contents: write

jobs:
  bump-uses:
    runs-on: ubuntu-latest
    steps:
      - uses: ryohidaka/action-annict2anilist@v1
        with:
          annict-client-id: "xxx"
          annict-client-secret: "xxx"
          anilist-client-id: "xxx"
          anilist-client-secret: "xxx"
          anilist-access-token: "xxx"
          anilist-refresh-token: "xxx"
          annict-access-token: "xxx"
          dry-run: 0
```

## Inputs

| Input                   | Description                          | Required | Default |
| ----------------------- | ------------------------------------ | -------- | ------- |
| `annict-client-id`      | Annict のクライアント ID             | ✅       |         |
| `annict-client-secret`  | Annict のクライアントシークレット    | ✅       |         |
| `anilist-client-id`     | Anilist のクライアント ID            | ✅       |         |
| `anilist-client-secret` | Anilist のクライアントシークレット   | ✅       |         |
| `anilist-access-token`  | Anilist のアクセストークン           | ✅       |         |
| `anilist-refresh-token` | Anilist のリフレッシュトークン       | ✅       |         |
| `annict-access-token`   | Annict のリフレッシュトークン        | ✅       |         |
| `dry-run`               | デバッグフラグ(有効: `1`, 無効: `0`) |          | `0`     |

## Outputs

| Output | Description | Example |
| ------ | ----------- | ------- |
