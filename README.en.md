<div align="center">

[简体中文](README.md) · **English** · [日本語](README.ja.md) · [한국어](README.ko.md)

<img src="icon.png" alt="Onevium" width="56" />

# Onevium

### Local-first. Built around the way you work.

A **local-first desktop AI workspace**. Bring multiple models, browser pages, files, and business tools into one project. Write code, research, and create images while reviewing the results as you go.

**[Download Onevium](https://github.com/Onevium/Onevium/releases/latest)** · [Getting started](https://onevium.com/docs/getting-started) · [What's new](releases/1.3.2.md)

macOS (Apple Silicon & Intel) · Windows x64

Follow **[@Onevium](https://github.com/Onevium)** for product updates and practical AI workflows.

</div>

![Onevium workspace: a project conversation beside the web page it is building](assets/workspace-1.2.4.png)

*Real interface components in an isolated 1.3.0 development demo. Projects, conversations, and reports use synthetic data.*

## From personal projects to business workflows

Onevium is already used by businesses in **customer service, logistics, and cross-border advertising**. Connect the model services, accounts, and tools you already use, then combine them into workflows that fit your team.

## Choose your models and services

| Type | Supported connections |
| --- | --- |
| International model services | Claude / Claude Code, OpenAI GPT, Google Gemini, xAI Grok |
| Chinese model services | DeepSeek, GLM / z.ai, Kimi / Moonshot, MiniMax, Alibaba Cloud Qwen, Xiaomi MiMo |
| Custom services | Connect a compatible custom endpoint or team model gateway with your own address, credentials, and model IDs |
| Image creation | Configure a separate OpenAI or Google Gemini image service |

Switch models within a conversation, or choose models for different members of a collaborating team. Available models, tool capabilities, and costs depend on the connected service and your account access. Your Onevium account and license are separate from model-service access. [Connection guide](https://onevium.com/docs/providers).

**Local-first, with your choice of services.** Your computer is the working environment for project files, conversations, and work materials; saved credentials are encrypted locally. When you use cloud models, image services, or messaging channels, relevant content is sent to the services you configure.

## Start with something you want to finish

| Your task | What you can do in Onevium |
| --- | --- |
| **Build a website or fix a project** | Ask AI to edit the files, open the preview beside the conversation, and inspect the changes in Review. Use a separate Git worktree to explore another approach. |
| **Research a topic or prepare a report** | Bring web pages and files into the task, work through the evidence, and keep the summary and charts beside the discussion. [Try an example](examples/README.md). |
| **Create an image, then refine it** | Start from a prompt, template, or reference. Mark a region, add a note, and continue editing beside the image. Requires a separately configured image service. |

<details>
<summary><strong>See a reporting example and four built-in themes</strong></summary>

![Onevium reporting workspace with a synthetic store report, revenue trend, and channel comparison](assets/report-1.2.4.png)

Sales, orders, channels, and conclusions are synthetic. No live store is shown. [Explore the example](examples/README.md).

![The same Onevium report in Warm paper, Neutral light, Nord, and Catppuccin themes](assets/themes-1.2.4.png)

These screenshots use the same 1.3.0 development demo described above.

</details>

## Get Onevium

**Stable release: 1.3.2.** [See the changes and upgrade notes](releases/1.3.2.md).

| Platform | Download |
| --- | --- |
| macOS · Apple Silicon | [Download arm64 DMG](https://github.com/Onevium/Onevium/releases/download/v1.3.2/Onevium-1.3.2-arm64.dmg) |
| macOS · Intel | [Download x64 DMG](https://github.com/Onevium/Onevium/releases/download/v1.3.2/Onevium-1.3.2-x64.dmg) |
| Windows · x64 | [Download EXE](https://github.com/Onevium/Onevium/releases/download/v1.3.2/Onevium-Setup-1.3.2.exe) |

**Upgrading to 1.3.2?** On macOS, quit Onevium and install this update manually from the DMG. The first launch upgrades local data; 1.3.1 cannot read the upgraded data. Read the [upgrade, signing, and recovery notes](https://onevium.com/docs/installation#updates) before updating.

The current stable release has no Linux or Windows arm64 installer. Complete account sign-in or license activation, then connect an available model service. [Installation and compatibility](https://onevium.com/docs/installation) · [Team inquiries](https://onevium.com/pricing).

## Quick install

<details>
<summary><strong>Show installation commands for macOS and Windows</strong></summary>

**macOS · Apple Silicon / Intel** — paste this line into Terminal:

```sh
curl -fsSL https://raw.githubusercontent.com/Onevium/Onevium/main/install/install.sh -o onevium-install.sh && sh onevium-install.sh
```

The helper detects your architecture, downloads the official stable installer, checks its SHA-256, and opens the installer. Drag Onevium into Applications to finish. Quit a running copy of Onevium before updating.

**Windows x64** — run in PowerShell:

```powershell
$p = Join-Path $env:TEMP 'onevium-install.ps1'; Invoke-WebRequest 'https://raw.githubusercontent.com/Onevium/Onevium/main/install/install.ps1' -OutFile $p -UseBasicParsing -ErrorAction Stop; & $p
```

This saves and runs the helper under your existing execution policy, verifies the installer, and opens its setup wizard. If your policy blocks scripts, use a direct download.

[Inspect the helpers, choose a version, and read installation details](install/README.md).

</details>

## Capabilities you can combine

- **Multiple models and collaborating teams.** Switch models in a conversation, give members their own model and task, and connect research, execution, and review.
- **Browser identities × independent network routes.** Keep separate cookies, sign-ins, and network routes for different accounts. HTTP, HTTPS, and SOCKS5 routes are supported; choose the identity for the task.
- **Secrets and hosts.** Encrypt API, database, and SSH credentials on your computer. Let AI reference them by name, follow your approval settings, and mask known secret values in output.
- **Remote work over SSH.** Let AI run commands and read or write server files within the permissions you grant once, for a limited time, or for a session.
- **Office and messaging channels.** Connect Feishu, DingTalk, and Discord group chats and direct messages, plus WeChat direct messages. Send tasks to your project assistant and receive results in the tools you already use.
- **Skills × MCP × plugins.** Save team processes as reusable skills, connect business tools, and combine them for each project and task.
- **Scheduled automation and notifications.** Run recurring tasks while Onevium is running, and receive notifications when conversations finish, need confirmation, or fail.
- **Memory with sources.** Inspect a memory's source conversation, evidence, and change history. Trace the memories used in an answer as work continues.

**One possible workflow:** receive a task in Feishu → select a model or assemble a team → open a business page with the appropriate browser identity and proxy → use saved credentials and process files within your permissions → summarize the result and reply to the channel. Connect the required services and permissions first, then turn verified steps into a Skill or recurring task.

[Browser and identities](https://onevium.com/docs/browser-automation) · [Team workflows](https://onevium.com/docs/teams) · [Messaging channels](https://onevium.com/docs/team-channels) · [Secrets and SSH update](releases/1.3.1.md) · [Memory and network routes update](releases/1.3.2.md)

## Follow the work. Try a workflow. Tell us what you need.

**Follow [@Onevium](https://github.com/Onevium)** for releases, workflow examples, and reusable agent skills. If Onevium is useful to you, **[star this repository](https://github.com/Onevium/Onevium)** to help others discover it. For release notifications, use **Watch → Custom → Releases** on this repository.

| Explore more from Onevium | Start here |
| --- | --- |
| Workflows for Claude Code, Codex, and other agents | [Agent skills](https://github.com/Onevium/skills) |
| Plugins and skills for the Onevium app | [Onevium Skill Community](https://github.com/Onevium/onevium-skill-community) |

Found a problem or have a workflow in mind? [Open an issue](https://github.com/Onevium/Onevium/issues) or email support@onevium.com.

---

[Website](https://onevium.com) · [Documentation](https://onevium.com/docs) · [Changelog](CHANGELOG.md) · [All releases](https://github.com/Onevium/Onevium/releases)

This repository contains product information, demo assets, public installation helpers, and Release installers. It does not contain the application's source code.
