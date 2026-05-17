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

### v1.1.5 — Smoother Settings, Sharper Inspector, Quieter Chat

- **No more Settings hang on repeated navigation.** Settings sections, Channels, and Scheduled Tasks now stay responsive under heavy back-and-forth switching. Sidebar running-counts and the CLI import check are shared across re-mounts so re-mount bursts can't flood the request pipeline.
- **Inspector sharpened.** `⌘F` searches inside the active file; the panel mounts on the `/chat` empty state so the file tree is always reachable; search no longer yanks scroll to top; "Open in external editor" gets a pending state with an opened-in-external affordance.
- **Quieter chat surface.** Lighter sidebar typography, a revived chat skeleton, a muted plug icon for connection status, flat count badges (no more breathing pulse, gracefully truncates to "99+"), and the assistant message edge now aligns with the composer.
- **Steadier chat behavior.** Image Agent state is scoped per split column; permission profile no longer flips back to Default on new or switched sessions; MessageMinimap triggers and PlusMenu close-on-toggle were polished.
- **Chrome bridge no longer loops on failure.** A failed bridge start (e.g. Claude CLI missing) requires an explicit Retry now — no more silent auto-retry storms or lingering poll intervals in the main process.
- **Schedules** — session_mode control is back in the create / edit dialogs.

<details>
<summary>v1.1.4 — Steer Reliability, Smoother Widgets, Refreshed Login</summary>

- **Steer messages land reliably in the current turn.** Queued Steer messages once again inject mid-stream, even during tool calls. The earlier "queued message never lands" behavior is fixed at the root.
- **Smoother widget rendering.** Widgets stream progressively with a smoother finalize step, raw HTML stays hidden until layout settles, and a safety net guarantees the final widget always becomes visible. The action bar now sits in a fixed slot above the iframe so it never overlaps content; drawio previews recover gracefully when the sandbox blocks initial load.
- **Refreshed login & activation flow.** Animated particle wordmark, dedicated hero phase, and auto-verification of the email code. Activation feels noticeably faster and less click-heavy.
- **Per-vendor cost visibility.** Anthropic rows reflect SDK-reported actual spend (Pro/Max subscribers no longer see inflated retail prices); third-party Anthropic-compatible proxies are recomputed against the local catalog. The Total Cost card now splits "Anthropic · actual" from "Others · list price" so you can see exactly where your spend comes from.
- **Channels MCP tool group.** Agents can now read and update channel metadata directly from inside chat, with built-in redaction and setup guidance.
- **Browser preview polish.** Comment popovers and pin overlays got a full pass — clearer affordances, better positioning, and a shared palette abstraction. Orphaned previews and lingering picker state are cleaned up reliably.
- **Inspector pane discipline.** The Review tab now hides on non-git projects and routes write actions to the File tab. Empty Review state offers a one-click "Initialize Git" entry point.
- **Quieter scroll behavior.** Ambient background updates use soft scroll so you're no longer yanked back to the latest line; the Thinking panel passes wheel events through to the page underneath.
- **Latest engine.** Upgraded to **Claude Code 2.1.140** (Claude Agent SDK 0.2.140) for the latest CLI parity.

</details>

<details>
<summary>v1.1.3 — Type @ to Build Anything: Inline Capability Chips</summary>

- **`@` summons all of Onevium.** Type `@` in any chat to call up nine built-in capabilities as colored inline chips — Skill, Memory, Agent, MCP, Plugin, Schedule, Channel, Browser, and Widget. Each chip launches a guided AI flow that produces a real artefact in your project: scaffold a skill, save context as memory, register an MCP server, schedule a recurring job, attach a DingTalk / Feishu / Discord channel, control the in-app browser, or build a custom widget. The chip looks identical in the input box, in historical messages, and in the message queue.
- **Future-proof capability system.** Adding new capabilities in upcoming releases never breaks existing chats — old conversations keep rendering correctly, and new chips fall into place without an upgrade ritual.
- **Tighter `@` menu visual.** Tools and files share a calmer popover with smaller padding, lighter borders, and a softer label color. Type to filter capabilities; hit `@/` to walk the project file tree. Group titles, entry rows, and chip squares read as one cohesive tool list.
- **Cleaner session titles.** Titles auto-derived from messages with chips now show plain capability names in the sidebar, breadcrumb, and drag preview.
- **Smoother macOS update prompt.** The in-app **Update Available** dialog now opens the GitHub release page directly, so a single click takes you to the latest download.
- **Polished chat input & status pill.** Mode-aware placeholders (Plan / Code) explicitly invite "anything"; the streaming retry status pill moved from screen-center to the bottom-right "soft notification" zone, matching nudge alerts and clearing the line of sight on the input box.

</details>

<details>
<summary>v1.1.2 — Channels redesigned, a smarter Browser, and Automations v2</summary>

- **Channels — Redesigned multi-platform bridge.** Inline editing for every field, a unified creation flow with explicit credential registration, and a calmer list/detail layout that mirrors Automations. DingTalk bridges now @-mention people by their real display name, never lose a reply when an AI Card streaming call fails, and surface running state in the sidebar.
- **Browser — Real browsing inside Onevium.** Persistent profile so cookies, history, and sessions survive launches. ⌘ / Ctrl + click on any Markdown link opens it inline with a clear hover badge — plain clicks still go to your default browser. Navigation shortcuts, auto-fit width, dialog clipping fix, and `file://` support for managed temp HTML.
- **Automations v2 ships in full.** A 1:1 redesign of the automations workspace with cleaner spacing, unified delete dialogs, and the legacy v1 path fully retired.
- **Proxy — Global mode with authenticated proxies.** HTTP Basic auth on the global toggle, real outbound IP shown for verification, and the embedded terminal now routes through proxy-bridge so nothing leaks around the global setting.
- **Platform-aware keyboard shortcuts.** Shortcuts display ⌘ on macOS and Ctrl on Windows/Linux, with the platform-native modifier order across menus, tooltips, and the inspector.
- **Multi-column split view polish.** Active column focus is now distinguished by font weight, opacity, and a unified hairline rather than bright background tints. Hover hints toned down for a calmer multi-session view.
- **Chat & streaming stability.** Stable assistant message IDs across the bridge → DB transition; smooth stop transitions; the streaming status bar remains visible even when the process view is hidden.
- **Smoother streaming and a smarter File inspector.** Page scroll flows through the streaming reasoning area instead of getting trapped, and Write/Edit tool clicks in non-git projects route directly to the File tab with the right scroll-to-line target. Inline previews for images, audio, video, and PDF land in the File tab.

</details>

<details>
<summary>v1.1.0 — Continuity, Browser, and a faster chat</summary>

- **Turn Continuity v2** — Sessions resume reliably across sleep/wake, app restarts, and external interruptions. Tool approvals, todos, and streaming output stay coherent end-to-end. The old 30-minute stream lifetime ceiling is gone.
- **In-app Sandbox Browser** — Preview any URL inside Onevium with a popover surface, on-page pins, an element picker for batch annotations, and a ⇧⌘P quick picker. New MCP tools let agents open and reload preview windows directly.
- **Live Preview Reload** — Edit an HTML or source file and the in-app preview refreshes automatically. Dev servers (Next.js, Vite, etc.) are detected and prompted on startup.
- **Persistent Chat Composer** — Drafts, attachments, and input state survive session switches. Switching feels instant.
- **Reasoning Effort Picker** — Choose how hard the model thinks per turn, exposed alongside the model selector.
- **Drag-to-Split Chat** — Pull a session into a new column with a drag, with a faster import shortcut.
- **Faster Chat Rendering** — Heavy markdown and Prism syntax highlighting are deferred for long messages. Streaming and scrolling stay smooth on multi-thousand-line transcripts.
- **Streaming Inspector** — File diffs and Git status update incrementally as tools run, with smart caching for untracked-heavy repos.
- **Cross-platform File API** — Windows path handling rebuilt end-to-end; project trees, file previews, and diffs work correctly on non-home drives.
- **Networking** — HTTPS proxy testing uses a real CONNECT tunnel; SDK traffic routes through an always-on local bridge.

</details>

<details>
<summary>v1.0.5 — Claude Opus 4.7 and 1M Context Window</summary>

- **Claude Opus 4.7 Support** — Default model upgraded to Anthropic's latest Opus generation. Opus 4.6 stays available as a Legacy option; existing chats retain their selected model.
- **1M Context Window (Beta)** — New toggle in Settings → Claude CLI → Features enables the `context-1m-2025-08-07` beta for Opus/Sonnet on Anthropic endpoints. Third-party providers and Haiku are skipped automatically.
- **Inspector Smart Routing** — Git repos land on the Review tab; non-git projects land on File. Clicking a file from chat jumps to the File tab and scrolls to the target line.
- **Inspector Virtualization & Focus Refresh** — Large diffs and long file lists render smoothly; the panel auto-refreshes when the window regains focus.
- **Cleaner Git Views** — Build artifacts (`release/`, `.next/`, `dist-electron/`) are auto-excluded from diff and status panels.

</details>

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

## Installation

**macOS** — Open the DMG, drag Onevium to Applications. On first launch, right-click and select "Open".

**Windows** — Run the installer and follow the prompts.

## Requirements

- macOS 12+ / Windows 10+
- Anthropic API key or Claude Pro/Max subscription

## Links

- [Website](https://onevium.com)
- [Lucky Box — Free Trial](https://www.onevium.com/lucky)
- [Documentation](https://onevium.com/docs)
- [Pricing](https://onevium.com/pricing)
- [Changelog](https://onevium.com/changelog)
- [Blog](https://onevium.com/blog)
- Support: support@onevium.com
