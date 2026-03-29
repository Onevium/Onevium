<p align="center">
  <img src="icon.png" width="128" height="128" alt="Onevium" />
</p>

<h1 align="center">Onevium</h1>

<p align="center">
  <strong>Your Personal AI Superapp</strong><br/>
  One person = One company. Powered by Claude Code.
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

---

## What is Onevium?

Onevium is a desktop GUI client for **Claude Code** (Anthropic's AI coding agent). It turns the power of Claude Code into a visual, intuitive experience — so you can build, ship, and manage software projects like an entire team, by yourself.

## Why Onevium?

Claude Code is the most capable AI coding agent available today. But it lives in the terminal. Onevium gives it a home:

- **Visual Chat Interface** — Rich markdown rendering, code blocks with syntax highlighting, file diffs, and image generation
- **Project Management** — Switch between multiple projects, track sessions, and organize your work
- **Memory & Context** — Persistent memory system that remembers your preferences, codebase patterns, and project context across sessions
- **Skills & Agents** — Create reusable skills (slash commands) and custom agents for repetitive workflows
- **MCP Servers** — Connect to Model Context Protocol servers for extended capabilities
- **Multi-Model Support** — Use Claude Opus, Sonnet, Haiku, or connect your own API providers
- **Git Integration** — Built-in git status, commit, push, and PR creation without leaving the app
- **Channels (Bridge)** — Connect Claude Code to DingTalk, Feishu, and other messaging platforms
- **Scheduled Tasks** — Automate recurring AI tasks with cron-based scheduling
- **Media Generation** — AI image generation with gallery management

## Screenshots

*Coming soon*

## Download

Download the latest version for your platform:

| Platform | Architecture | Download |
|----------|-------------|----------|
| macOS | Apple Silicon (M1/M2/M3/M4) | [Onevium-1.0.0-arm64.dmg](https://github.com/Onevium/Onevium/releases/download/v1.0.0/Onevium-1.0.0-arm64.dmg) |
| macOS | Intel | [Onevium-1.0.0-x64.dmg](https://github.com/Onevium/Onevium/releases/download/v1.0.0/Onevium-1.0.0-x64.dmg) |
| Windows | x64 | [Onevium-Setup-1.0.0.exe](https://github.com/Onevium/Onevium/releases/download/v1.0.0/Onevium-Setup-1.0.0.exe) |
| Linux | x64 | [Onevium-1.0.0-x86_64.AppImage](https://github.com/Onevium/Onevium/releases/download/v1.0.0/Onevium-1.0.0-x86_64.AppImage) |
| Linux | ARM64 | [Onevium-1.0.0-arm64.AppImage](https://github.com/Onevium/Onevium/releases/download/v1.0.0/Onevium-1.0.0-arm64.AppImage) |

## Requirements

- **macOS** 12+ (Monterey or later)
- **Windows** 10+ (x64)
- **Linux** — Ubuntu 20.04+, Fedora 36+, or equivalent
- **Claude Code CLI** — Install via `npm install -g @anthropic-ai/claude-code`
- **Anthropic API key** or Claude Pro/Max subscription

## Installation

### macOS
1. Download the `.dmg` file for your architecture
2. Open the DMG and drag Onevium to Applications
3. On first launch, right-click and select "Open" (required for unsigned apps)

### Windows
1. Download `Onevium-Setup-1.0.0.exe`
2. Run the installer and follow the prompts
3. Onevium will be available in the Start Menu

### Linux
1. Download the `.AppImage` file
2. Make it executable: `chmod +x Onevium-*.AppImage`
3. Run: `./Onevium-*.AppImage`

## Tech Stack

| Layer | Technology |
|-------|-----------|
| Desktop | Electron |
| Web Framework | Next.js (App Router) + React |
| Language | TypeScript |
| Styling | Tailwind CSS + shadcn/ui |
| Database | SQLite (better-sqlite3) |
| AI SDK | Claude Code SDK |

## Links

- **Website**: [onevium.com](https://onevium.com)
- **Support**: support@onevium.com

## License

Onevium is proprietary software. See the [license agreement](https://onevium.com/terms) for details.

---

<p align="center">
  Built with Claude Code
</p>
