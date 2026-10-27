<div align="center">

[简体中文](README.md) · [English](README.en.md) · **日本語** · [한국어](README.ko.md)

<img src="icon.png" alt="Onevium" width="56" />

# Onevium

### ローカルファースト。いつもの仕事にAIを。

**Local-first（ローカルファースト）**のデスクトップAIワークスペース。複数のモデル、ブラウザー、ファイル、業務ツールを同じプロジェクトにまとめ、コード作成、調査、画像制作を進めながら成果を確認できます。

**[Oneviumをダウンロード](https://github.com/Onevium/Onevium/releases/latest)** · [はじめに（英語）](https://onevium.com/docs/getting-started) · [更新情報（英語）](releases/1.3.2.md)

macOS（Apple Silicon / Intel）· Windows x64

**[@Onevium](https://github.com/Onevium)** をフォローして、製品の更新情報やAIを使った実践的なワークフローをご覧ください。

</div>

![Oneviumのワークスペース：プロジェクトの会話と、作成中のWebページを並べて表示](assets/workspace-1.2.4.png)

*スクリーンショットは、実際のUIコンポーネントを使った1.3.0開発時の独立したデモ環境で撮影しました。プロジェクト、会話、レポートのデータは架空のものです。*

## 個人のプロジェクトから、企業の日常業務まで

Oneviumはすでに、**カスタマーサービス、物流、越境広告の企業**で利用されています。使い慣れたモデルサービス、アカウント、業務ツールを接続し、チームに合ったワークフローを組み合わせられます。

## モデルとサービスを選べます

| 種類 | 対応する接続 |
| --- | --- |
| 国際的なモデルサービス | Claude / Claude Code、OpenAI GPT、Google Gemini、xAI Grok |
| 中国のモデルサービス | DeepSeek、GLM / z.ai、Kimi / Moonshot、MiniMax、Alibaba Cloud Qwen、Xiaomi MiMo |
| カスタムサービス | 互換APIを持つサービスやチーム用ゲートウェイに、独自のURL、認証情報、モデルIDで接続 |
| 画像生成 | OpenAIまたはGoogle Geminiの画像サービスを別途設定 |

同じ会話の中でモデルを切り替えたり、チームのメンバーごとにモデルを選んだりできます。利用可能なモデル、ツール機能、料金は接続先とアカウントの権限により異なります。Oneviumのアカウントとライセンスは、モデルサービスの利用権限とは別です。 [接続ガイド（英語）](https://onevium.com/docs/providers)。

**ローカルを中心に、サービスは自分で選択。** プロジェクトのファイル、会話、作業資料は自分のコンピューターを中心に扱い、保存した認証情報はローカルで暗号化します。クラウドモデル、画像サービス、メッセージング連携を利用する場合、関連する内容は設定したサービスへ送信されます。

## まずは、仕上げたい作業から

| やりたいこと | Oneviumでできること |
| --- | --- |
| **Webサイトの作成や既存プロジェクトの修正** | AIにファイルの編集を依頼し、会話の横でプレビューを開いて、Reviewで変更を確認できます。別の案を試すときは、独立したGit worktreeも使えます。 |
| **テーマの調査やレポートの作成** | Webページやファイルを使って情報を確認し、要約、グラフ、会話を同じ場所にまとめられます。[サンプルを見る（英語）](examples/README.md)。 |
| **画像の作成と調整** | プロンプト、テンプレート、参考画像から始められます。範囲を指定してメモを添え、画像の横で編集を続けられます。画像生成サービスの別途設定が必要です。 |

<details>
<summary><strong>レポートのサンプルと4種類の内蔵テーマを見る</strong></summary>

![Oneviumのレポート画面：架空の店舗レポート、売上推移、チャネル比較](assets/report-1.2.4.png)

売上、注文、チャネル、結論はすべて架空のデータです。実際の店舗には接続していません。[サンプルを見る（英語）](examples/README.md)。

![同じレポートをWarm paper、Neutral light、Nord、Catppuccinの4種類のテーマで表示](assets/themes-1.2.4.png)

これらも、上記の1.3.0開発時のデモ環境で撮影したものです。

</details>

## Oneviumをダウンロード

**現在の安定版：1.3.2。** [変更内容とアップグレードの注意事項（英語）](releases/1.3.2.md)。

| プラットフォーム | ダウンロード |
| --- | --- |
| macOS · Apple Silicon | [arm64 DMGをダウンロード](https://github.com/Onevium/Onevium/releases/download/v1.3.2/Onevium-1.3.2-arm64.dmg) |
| macOS · Intel | [x64 DMGをダウンロード](https://github.com/Onevium/Onevium/releases/download/v1.3.2/Onevium-1.3.2-x64.dmg) |
| Windows · x64 | [EXEをダウンロード](https://github.com/Onevium/Onevium/releases/download/v1.3.2/Onevium-Setup-1.3.2.exe) |

**1.3.2にアップグレードする場合：** macOSではOneviumを終了し、DMGから手動でインストールしてください。初回起動時にローカルデータが更新され、1.3.1では更新後のデータを直接読み込めなくなります。事前に[アップグレード、署名、復元についての説明（英語）](https://onevium.com/docs/installation#updates)をお読みください。

現在の安定版には、LinuxおよびWindows arm64向けのインストーラーはありません。インストール後にアカウントへのサインインまたはライセンスの有効化を行い、利用できるモデルサービスを接続してください。[インストールと互換性（英語）](https://onevium.com/docs/installation) · [企業・チーム向けのお問い合わせ（英語）](https://onevium.com/pricing)。

## コマンドでインストール

<details>
<summary><strong>macOSとWindowsのインストールコマンドを表示</strong></summary>

**macOS · Apple Silicon / Intel** — ターミナルに次のコマンドを貼り付けます。

```sh
curl -fsSL https://raw.githubusercontent.com/Onevium/Onevium/main/install/install.sh -o onevium-install.sh && sh onevium-install.sh
```

ヘルパーがCPUアーキテクチャを判別し、公式の安定版インストーラーをダウンロードしてSHA-256を確認し、インストール画面を開きます。Oneviumを「アプリケーション」にドラッグして完了してください。更新前に、起動中のOneviumを終了してください。

**Windows x64** — PowerShellで実行します。

```powershell
$p = Join-Path $env:TEMP 'onevium-install.ps1'; Invoke-WebRequest 'https://raw.githubusercontent.com/Onevium/Onevium/main/install/install.ps1' -OutFile $p -UseBasicParsing -ErrorAction Stop; & $p
```

現在の実行ポリシーに従ってヘルパーを保存・実行し、インストーラーを検証してセットアップ画面を開きます。スクリプトの実行が許可されていない場合は、インストーラーを直接ダウンロードしてください。

[ヘルパーの確認、バージョン指定、詳しい手順（英語・中国語）](install/README.md)。

</details>

## 組み合わせて使える機能

- **複数モデルとチーム連携。** 会話中にモデルを切り替え、メンバーごとにモデルと作業を割り当て、調査、実行、確認をひとつの流れにできます。
- **ブラウザーのID × 独立したネットワーク経路。** アカウントごとにCookie、ログイン状態、ネットワーク経路を分けて保存できます。HTTP、HTTPS、SOCKS5に対応し、作業に合ったIDを選べます。
- **シークレットとホスト管理。** API、データベース、SSHの認証情報をローカルで暗号化して保存します。AIは名前で参照し、設定した承認ルールに従って使用し、出力に含まれる既知のシークレットをマスクします。
- **SSHによるリモート作業。** 1回、一定時間、会話単位の権限を設定し、許可した範囲でサーバーのコマンド実行やファイルの読み書きを任せられます。
- **業務・コミュニケーションツールとの連携。** Feishu、DingTalk、DiscordのグループチャットとDM、WeChatのDMに接続し、いつもの場所からプロジェクトアシスタントに依頼して結果を受け取れます。
- **Skills × MCP × プラグイン。** チームの手順を再利用できるスキルにまとめ、業務ツールを接続し、プロジェクトや作業に合わせて組み合わせられます。
- **定期実行と通知。** Oneviumの起動中に繰り返し作業を実行し、会話の完了、確認待ち、エラーを通知で受け取れます。
- **根拠を確認できるメモリ。** 元の会話、根拠、変更履歴を確認できます。回答で使われたメモリをたどりながら作業を続けられます。

**組み合わせの例：** Feishuで依頼を受信 → モデルを選択、またはチームを編成 → 適切なブラウザーIDとプロキシで業務ページにアクセス → 許可の範囲内で認証情報やファイルを使用 → 結果をまとめてチャットへ返信。必要なサービスと権限を接続し、確認済みの手順をSkillや定期実行にまとめられます。

[ブラウザーとID（英語）](https://onevium.com/docs/browser-automation) · [チーム連携（英語）](https://onevium.com/docs/teams) · [チャット連携（英語）](https://onevium.com/docs/team-channels) · [シークレットとSSHの更新（英語）](releases/1.3.1.md) · [メモリとネットワーク経路の更新（英語）](releases/1.3.2.md)

## 更新を追い、ワークフローを試し、ご要望をお聞かせください

**[@Onevium](https://github.com/Onevium)をフォロー**すると、新バージョン、ワークフローのサンプル、再利用できるAgent Skillsをチェックできます。役に立ったら、**[このリポジトリにStar](https://github.com/Onevium/Onevium)** を付けて応援してください。リリース通知を受け取るには、このリポジトリで **Watch → Custom → Releases** を選択します。

| Oneviumのほかのプロジェクト | リンク |
| --- | --- |
| Claude Code、Codexなどで使えるワークフロー | [Agent Skills](https://github.com/Onevium/skills) |
| Oneviumアプリ向けのプラグインとスキル | [Onevium Skill Community](https://github.com/Onevium/onevium-skill-community) |

問題や試したいワークフローがあれば、[Issueを作成](https://github.com/Onevium/Onevium/issues)するか、support@onevium.comまでご連絡ください。

---

[公式サイト（英語）](https://onevium.com) · [ドキュメント（英語）](https://onevium.com/docs) · [変更履歴（英語・中国語）](CHANGELOG.md) · [すべてのリリース](https://github.com/Onevium/Onevium/releases)

このリポジトリには、製品情報、デモ素材、公開インストールヘルパー、Releaseインストーラーを掲載しています。アプリケーションのソースコードは含まれていません。
