<p align="center">
  <img src="icon.png" width="128" height="128" alt="Onevium" />
</p>

<h1 align="center">Onevium</h1>

<p align="center">
  <strong>Automate the browser, schedule the work, deploy bots — all from one desktop.</strong>
</p>

<p align="center">
  A native desktop app that lets AI browse the web, run agents on a schedule, and push results into your team channels.
</p>

<p align="center">
  <a href="https://github.com/Onevium/Onevium/releases/latest">
    <img src="https://img.shields.io/github/v/release/Onevium/Onevium?style=flat-square&color=4f8c5e" alt="Latest Release" />
  </a>
  <a href="https://github.com/Onevium/Onevium/releases/latest">
    <img src="https://img.shields.io/github/downloads/Onevium/Onevium/total?style=flat-square&color=4f8c5e" alt="Downloads" />
  </a>
  <a href="https://onevium.com">
    <img src="https://img.shields.io/badge/website-onevium.com-4f8c5e?style=flat-square" alt="Website" />
  </a>
</p>

<p align="center">
  <a href="https://www.onevium.com/lucky"><strong>Open your Lucky Box — get up to 14 days free trial</strong></a>
</p>

---

## What's New

### v1.0.5 — Claude Opus 4.7 and 1M Context Window

- **Claude Opus 4.7 Support** — Default model upgraded to Anthropic's latest Opus generation. Opus 4.6 stays available as a Legacy option; existing chats retain their selected model.
- **1M Context Window (Beta)** — New toggle in Settings → Claude CLI → Features enables the `context-1m-2025-08-07` beta for Opus/Sonnet on Anthropic endpoints. Third-party providers and Haiku are skipped automatically.
- **Inspector Smart Routing** — Git repos land on the Review tab; non-git projects land on File. Clicking a file from chat jumps to the File tab and scrolls to the target line.
- **Inspector Virtualization & Focus Refresh** — Large diffs and long file lists render smoothly; the panel auto-refreshes when the window regains focus.
- **Cleaner Git Views** — Build artifacts (`release/`, `.next/`, `dist-electron/`) are auto-excluded from diff and status panels.

<details>
<summary>v1.0.4 — Inspector Pane, Agent Role Colors, and Connection Status Redesign</summary>

- **Inspector Pane** — A brand-new side panel with Review (inline diff viewer + git staging), File (syntax-highlighted preview), and Widget (interactive preview) tabs. Never leave the chat to review changes.
- **Agent Role Colors** — Spawned subagents display distinct color-coded badges by role across tool call blocks and the Activity Panel. Instantly see who's doing what.
- **Background Process Tracking** — Enhanced real-time visibility into agent-spawned processes with lifecycle tracking and one-click stop.
- **Connection Status Redesign** — Richer state transitions, provider binding info, and clear error surfacing.
- **Chat UI Refinements** — Streamlined full-access flow, improved new-session page, cleaner embedded terminal.

</details>

<details>
<summary>v1.0.3 — Multi-Provider Model Support and System-Aware Proxy</summary>

- **Multi-Provider Model Switching** — First-class presets for Anthropic Claude, Z.AI / BigModel (GLM), Moonshot / Kimi, and MiniMax with fully user-configurable model catalogs.
- **System-Aware Network Proxy** — Auto-detects OS-level proxy. Dedicated settings page with HTTP / HTTPS / SOCKS5, connection tester, encrypted credentials.
- **Provider Model Sync** — Real-time model catalog sync from each provider's API.
- **Tool Detection** — Auto-detects installed IDEs, shells, and CLIs for one-click launches.

</details>

<details>
<summary>v1.0.2 — Steer the AI Mid-Thought, Built-in Terminal, and Real-Time Activity Feed</summary>

- **Steer** — Redirect your AI mid-stream: drop a new instruction while the model is still typing and watch it pivot in real time.
- **Built-in Terminal** — A full xterm.js terminal inside Onevium — multi-tab, resize, spawn and kill processes without leaving the window.
- **Activity Panel** — A live feed of running tasks, spawned subagents, background processes, and active monitors.
- **Memory Explorer** — Browse, search, and manage every memory your AI has formed — filterable by project, categorized with confidence scores.
- **Message Minimap** — A VS Code-style navigation rail for long conversations.
- **Cross-platform IDE Launch** — Open projects in Cursor, VS Code, IntelliJ IDEA, WebStorm, or Sublime Text on macOS and Windows.
- **Image Lightbox Overhaul** — Zoom, pan, and rotate inline images.

</details>

<details>
<summary>v1.0.1</summary>

- Initial public release
- Browser automation, scheduled workflows, channel bots
- MCP extensibility, skills & agents system
- Cross-platform support (macOS, Windows, Linux)

</details>

---

## Browser Automation

**Act across live web surfaces.**

Navigate pages, fill forms, inspect console output, read network activity, and return results through the same desktop conversation surface.

- Navigate tabs and pages with natural language
- Fill forms and capture screenshots along the way
- Read console and network output without leaving the flow
- Works with Chrome, Edge, Arc, Brave, Vivaldi, Opera, Chromium

## Scheduled Workflows

**Turn prompts into recurring jobs.**

Daily QA passes, release notes, sprint digests, and operational checks should not depend on somebody remembering to ask. Schedules make the product behave like a system.

- Recurring jobs with clear run timing
- Manual trigger when you need to rerun now
- Notification routing back to the right team room

## Channel Bots

**Deploy workflows into team channels.**

Channel bots let the same workflows show up where teams already work together — Feishu, DingTalk, and Discord.

- Per-user or shared session models
- Role-specific bots for release, QA, docs, and ops
- Cross-bot collaboration without hiding the control model

## Visible Control

**Keep tool calls and approvals visible.**

The UI makes automation feel trustworthy. Reads, edits, shell commands, and permissions stay inspectable instead of disappearing behind a black box.

- Real-time tool execution visibility
- Approval modes that match your trust boundary
- File rewind and session-level control for safer iteration

## MCP Extensibility

**Connect to any external service.**

Extend capabilities through Model Context Protocol servers — databases, APIs, cloud services, and custom integrations.

- User-level (global) or project-level scoping
- Popular integrations: PostgreSQL, MySQL, GitHub, GitLab, Slack, Linear, Notion, AWS, GCP, Cloudflare

## Skills & Agents

**Build reusable workflows.**

Create custom skills (slash commands) and agents with specific system prompts, model preferences, tool restrictions, and permission modes.

- Reusable markdown templates invoked with `/`
- Custom agents with scoped permissions per task
- Project-level or global skill definitions

---

## Download

Download the latest version from the [Releases](https://github.com/Onevium/Onevium/releases/latest) page.

| Platform | Architecture | Format |
|----------|-------------|--------|
| macOS | Apple Silicon | `.dmg` |
| macOS | Intel | `.dmg` |
| Windows | x64 | `.exe` (NSIS installer) |
| Linux | x64 | `.AppImage` |
| Linux | ARM64 | `.AppImage` |

## Installation

**macOS** — Open the DMG, drag Onevium to Applications. On first launch, right-click and select "Open".

**Windows** — Run the installer and follow the prompts.

**Linux** — `chmod +x Onevium-*.AppImage && ./Onevium-*.AppImage`

## Requirements

- macOS 12+ / Windows 10+ / Ubuntu 20.04+
- Anthropic API key or Claude Pro/Max subscription

## Links

- [Website](https://onevium.com)
- [Lucky Box — Free Trial](https://www.onevium.com/lucky)
- [Documentation](https://onevium.com/docs)
- [Pricing](https://onevium.com/pricing)
- [Changelog](https://onevium.com/changelog)
- [Blog](https://onevium.com/blog)
- Support: support@onevium.com
