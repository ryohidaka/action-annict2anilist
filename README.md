# action-annict2anilist

[![GitHub Release](https://img.shields.io/github/v/release/ryohidaka/action-annict2anilist)](https://github.com/ryohidaka/action-annict2anilist/releases/)
[![Test Action](https://github.com/ryohidaka/action-annict2anilist/actions/workflows/test.yml/badge.svg)](https://github.com/ryohidaka/action-annict2anilist/actions/workflows/test.yml)

Annict から AniList にライブラリを同期する `annict2anilist` を実行するGitHub Actions.

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
          who-to-greet: "Mona the Octocat"

      - run: echo random-number "$RANDOM_NUMBER"
        shell: bash
        env:
          RANDOM_NUMBER: ${{ steps.foo.outputs.random-number }}
```

## Inputs

| Input          | Description  | Required | Default |
| -------------- | ------------ | -------- | ------- |
| `who-to-greet` | Who to greet | ✅       | `World` |

## Outputs

| Output          | Description   | Example |
| --------------- | ------------- | ------- |
| `random-number` | Random number | `9999`  |
