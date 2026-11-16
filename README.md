# 今日のきくちゃん

好きなところを、ふたりで眺められる小さな記録帳です。

## 構成

- Cloudflare Workers: API、Google OAuth、共有リンク
- Cloudflare D1: 記録の永続化
- Workers AI: 追加した記録から当日の短いメモを生成
- GitHub: ソース公開

## Google OAuth の設定

Google Cloud Console で Web アプリの OAuth クライアントを作成し、次のリダイレクト URI を登録します。

`https://<your-worker>.workers.dev/api/auth/callback`

Worker のシークレットへ `GOOGLE_CLIENT_ID`、`GOOGLE_CLIENT_SECRET`、`SESSION_SECRET` を登録してください。`OWNER_EMAIL` は閲覧・追加を行う Google アカウントのメールアドレスです。

環境変数が未設定の間は、アプリは公開閲覧の画面を表示しますが、新しい記録の追加はできません。
