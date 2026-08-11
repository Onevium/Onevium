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

### v1.1.19 — Goal mode, editable canvases, and a more reliable built-in browser

- **Goal mode.** Use `/goal` to give longer work a concrete completion condition, with live progress, elapsed time, and the latest check shown in the session.
- **Editable SVG canvases.** Select, move, edit, connect, resize, and save generated visual work directly from the conversation.
- **A more reliable built-in browser.** Reopening and refreshing AI-controlled pages is steadier, with improved screenshots, downloads, viewports, cookies, and profile handling.
- **Calmer split conversations.** Clearer active columns, lighter dividers, adaptive narrow composers, equal-width reset, and layouts that survive refresh or relaunch.
- **Settings above split views.** Settings now stay in a dedicated overlay layer, with predictable nested dialogs, menus, focus, Escape handling, and scrolling.
- **Faster review loops.** Focused file previews, steadier project routing, and clean cancellation handling in Monaco diffs.
- **Updated Claude support.** Claude Agent SDK 0.3.226, Anthropic SDK 0.116.0, refreshed model capabilities, and safer provider migrations.

> ⚠️ Manual download recommended — automatic update from older versions may fail on macOS due to ad-hoc code signing. Just download the installer below and reinstall over the existing app.

<details>
<summary>v1.1.18 — Usage insights, persistent terminals, in-chat command cards</summary>

- **Usage page.** Settings → Usage shows your Claude account, live plan limits as clear progress bars, and a behavior-analysis panel — see how your session and weekly quotas are trending at a glance.
- **Terminals that remember.** The built-in terminal is now cached per project: collapse it and your history and running processes are still there when you reopen, and every session in a project shares the same terminal.
- **In-chat command cards.** Running `/usage`, `/context`, `/config`, or `/recap` in chat renders a clean, readable card instead of raw text output.
- **Richer session menu.** Right-click any session in the sidebar to copy its path, open it in the built-in terminal, or open it in your editor of choice.
- **Live session list.** The sidebar updates the moment a session changes through a lightweight push channel, without re-rendering the whole list on every tick.
- **Smoother display.** Messages scrolled off-screen skip rendering entirely, and decorative effects step down automatically on GPUs without hardware compositing, keeping long sessions and split views fluid.

</details>

<details>
<summary>v1.1.17 — Faster everywhere, workflow progress you can trust</summary>

- **Big diffs open instantly.** Reviewing a change in a large file no longer freezes the app — diff views highlight only the lines on screen.
- **Smoother streaming & long sessions.** Render work per streamed token is roughly halved, and messages outside the viewport skip layout entirely, so long conversations stay fluid.
- **Workflow progress you can trust.** The workflow card reconciles against durable run records — it always reaches its true final state (even for background workflows or after a restart), shows live per-agent completion counts, and freezes all motion when the run finishes.
- **Crisper icons on Windows.** Toolbar and navigation icons pin their stroke width physically, fixing the fuzzy look on 125%/150% display scaling.
- **Low-graphics auto mode.** Machines whose GPU falls back to software compositing get decorative animations switched off automatically — no setup needed.
- **Lighter on your machine.** Background polling pauses while minimized; internal caches are now bounded.
- **Windows platform fixes.** Feishu/Lark file downloads, "Show in File Explorer", Ctrl+↑/↓ diff navigation, and background AI features (automatic Git Bash detection) now work correctly.

</details>

<details>
<summary>v1.1.16 — Workflow reliability hotfix</summary>

- **Workflows no longer get interrupted mid-run.** A live Workflow is now correctly recognized as in-flight, so the resume/wake path waits for it to finish instead of aborting it.
- **Reliable resume after a Workflow.** When a turn launches a Workflow and waits, the conversation always wakes back up with the Workflow's results — no more "it ran but nothing came back."

</details>

<details>
<summary>v1.1.15 — Smarter model awareness & clearer permissions</summary>

- **Model-switch alerts.** If Claude declines a turn and the session falls back to a different model, Onevium now tells you instead of silently continuing on another model.
- **Clearer tool permissions.** Approval cards show human-readable tool names (especially for MCP tools) instead of raw wire identifiers, so you know exactly what you're approving.
- **Safety-check notices.** When a risky operation is blocked by a safety check, you get a clear heads-up instead of a buried error.
- **Latest Claude Agent SDK (0.3.195).** Bumped from 0.3.170, picking up the newest models and upstream reliability fixes.
- **Accurate context meter.** The context-window indicator now reads your model's real window size straight from the SDK, so it's correct on large-context (1M) models instead of overstating usage.
- **More.** Smoother reconnect to in-progress turns and more reliable long-running task waits.

</details>

<details>
<summary>v1.1.14 — Sharper memory recall, in-page reattach, role-model mapping</summary>

- **Memory recall v2.2 — cross-encoder reranker.** A new precision gate (bge-reranker-base) reads each (query, memory) pair jointly on top of the cosine + BM25 + entity candidate pool. On real Onevium memory the old cosine path ranked unrelated same-project memories ABOVE the relevant one at 0.70+ similarity; the reranker pushes those down to ≤0.10 relevance. A cold reranker degrades silently to the v2.1 path — the first message after upgrade is never blocked.
- **In-page reattach to running turns.** Open any chat with a server-side turn still running and the reply continues inline; the input is locked while it streams; the sidebar shows a per-session in-progress indicator so you can always find it. No more "background finished but the page is dead" state.
- **Per-provider role-model mapping.** Custom Anthropic-compatible providers now expose an editable role → model table (opus / sonnet / haiku) in Settings → Providers. Useful for company gateways that default to a model you don't want.
- **Long-task protocol split.** The system prompt now distinguishes self-monitoring background work from foreground build / test commands, so a long build is no longer pushed into a `run_in_background` slot that will be reaped before it finishes.
- **More.** Workflow card persistence across stream → persistence handoff, streaming flicker fix (no backdrop-blur), sidebar polling dedupe, preview teardown fix, simpler auto-continue surfaces.

</details>

<details>
<summary>v1.1.13 — Claude Fable 5, latest Claude Agent SDK, smarter continuity</summary>

- **Claude Fable 5 support.** Anthropic's new Mythos-class model is now selectable alongside Opus 4.8 and Sonnet 4.6. Opt-in, priced at $10 / $50 per MTok. Opus 4.8 remains the default for new chats.
- **Claude Agent SDK 0.3.170.** Bumped from 0.3.158 across this release, picking up upstream fixes and three latent optimizations. M1 regression resolved.
- **Auto-continuity for promised work.** When the assistant says it will come back with results later AND has live background work running, Onevium automatically wakes the turn when that work finishes. Stale background tasks also expose a manual "let AI continue" button.
- **Per-session reasoning level + per-model default.** Each chat remembers its own reasoning effort (low / medium / high). Settings → General now has a per-model default for new sessions.
- **Live sub-agent following.** Drill into any running sub-agent and watch its transcript stream in real time. Cards anchor where you triggered them, expand smoothly, and stay visible across long workflows. Cancel any sub-agent independently with F5.
- **More.** @Recap MCP for activity queries, smarter daily briefing ranking with copy-as-narrative, Review panel discard / revert-all with archive, Activity split panel polish, response time in message footer, and CJK memory recall fixes.

</details>

<details>
<summary>v1.1.12 — Stability fixes + reliable Channels reconnection</summary>

- **Channels stability.** Bots stay connected reliably and recover automatically; a new health indicator on the sidebar surfaces any bot needing attention.
- **Smoother live chat stream.** Replies keep flowing even when Onevium is in the background, behind another window, or on another Space.
- **Instant action feedback.** Confirming a Question from Claude collapses the card immediately, no more "click with no response" gap.
- **General reliability hardening** across startup, packaging, and the app surface.

</details>

<details>
<summary>v1.1.10 — Ultracode: multi-agent workflows for Claude Opus 4.8</summary>

- **Ultracode mode.** A one-tap mode for Claude Opus 4.8 that runs your task as a multi-agent workflow — the model decomposes the work, dispatches sub-agents in parallel, verifies their findings against each other, and synthesizes one result. Toggle it from the composer; the choice persists with the session and can be flipped mid-stream.
- **Inline workflow card.** Every workflow collapses into a single live card in the conversation: sub-agents grouped by type, per-agent run / done / fail status, and a workflow title. Expand any sub-agent to read its full transcript, and follow a running agent's output as it streams without scrolling to chase the latest line.
- **Live reattach.** Reload the window, drop your connection, or switch sessions mid-turn — Onevium reconnects to the in-progress reply, keeps streaming it, then hands off seamlessly to the finished message. Turns no longer get stuck after a refresh.
- **Turn continuity hardened.** A self-notifying background task (a workflow, an agent, or a background process) no longer double-wakes a parked turn, removing a spurious error and duplicate work, and a turn is no longer idle-aborted while a workflow or background agent is still running.
- **More.** Workflow progress in the Activity Panel, mid-stream effort and Ultracode switching, a confirm-on-quit dialog with a macOS reopen fix, and the Claude Agent SDK upgraded to 0.3.156.

</details>

<details>
<summary>v1.1.9 — Claude Opus 4.8 on day one, Memory v2 window-extraction, chat error boundaries</summary>

- **Claude Opus 4.8 on launch day.** Onevium 1.1.9 ships with `claude-opus-4-8` wired into the model picker, the effort tiers (low / medium / high / xhigh / max), and the usage-cost catalog from the moment you update. A database migration reseeds the model list for users who connected Anthropic before 4.8 shipped, so it appears in Settings → Providers → Manage Models automatically.
- **Memory v2 — window-extraction redesign.** The extractor now sees the last N user+assistant turns (N = frequency: high=1, mid=3, low=5) instead of a single-turn snapshot, and existing session memories are passed alongside the prompt so the model stops re-extracting facts it already captured. Dedup collapsed from a two-stage election + merge into a single reconcile pass that decides NONE / UPDATE / MERGE / ADD per candidate. Chinese-language recall is materially better.
- **Chat error boundaries.** A malformed message can no longer crash the whole list. Individual bubbles fall back to an error placeholder while the rest of the conversation keeps rendering.
- **Memory recall popover redesigned.** Hidden scrollbar, fade gradients at the edges, click-to-expand long memories, and project-aware origin labels (so you can tell which project a global memory came from). Scrolling through long recall lists is much smoother.
- **Per-project memory extraction blocklist.** Exclude individual projects from automatic memory extraction without disabling extraction globally. Existing memories from excluded projects still recall normally; only new writes are suppressed.
- **Polish across surfaces.** Auto-continue affordance centred under the last bubble, image grid cell overflow fixed on narrow widths, CompactingPill animation softened.
</details>

<details>
<summary>v1.1.7 — Daily Briefing reliability, faster git diff, and tighter production hardening</summary>

- **Daily Briefing reads cleanly.** The "For you" insight no longer leaks raw JSON braces or wrapper text — content is generated as plain prose with a defence-in-depth fallback that strips any JSON-shaped escape that slips through.
- **Faster git diff in the Inspector.** The Review tab opens noticeably faster on large repos. Diff hunks render in chunks, the underlying API does less synchronous work, and switching between files no longer freezes the panel.
- **Background work keeps your machine awake.** Onevium now holds a `prevent-app-suspension` power assertion while a session is running, a channel is processing a message, or a scheduled task is in flight — and releases it the moment the work ends. Sessions, channels, and schedules no longer get killed when the laptop idles to sleep.
- **Smoother chat motion.** Freshly-sent user messages slide up into place with a short, calm easing; existing history loads instantly without any entrance animation. Split columns refresh their titles and message state reliably when you swap sessions between columns, and the top progress bar no longer gets stuck in split mode.
- **Tighter production builds.** DevTools is now disabled in packaged releases — there's no longer a way to open the React inspector or pry into internal state from a shipped build. Dev mode is unaffected.
- **Trial period for new email signups now reads from the admin panel.** New Onevium accounts get a 7-day trial by default; the duration can be changed in real time from the admin panel without redeploying the auth worker.

</details>

<details>
<summary>v1.1.6 — Memory that actually remembers, plus a cross-project morning briefing</summary>

- **Memory v2 — three-layer context injection.** Every chat now opens with three layers of memory automatically stitched into the system prompt: a free-form **User Rules** Markdown editor (Settings → Autonomy) for hand-written global preferences, a 24h-cached digest of pinned memories and stable project facts, and a per-message hybrid local search (vector + full-text, top-5) that picks the most relevant memories for your current question. No network calls — the retrieval pipeline runs locally against on-device embeddings and SQLite.
- **See exactly what got injected.** Every user bubble gets a small memory chip in its footer recording which memories were attached when the AI answered. Hover the bubble, click the chip, see the list with relevance scores. Snapshot is independent of the live store — editing or archiving a memory later doesn't change the audit trail.
- **Daily Briefing — cross-project morning summary.** New sidebar entry that auto-generates a briefing every morning. "Pick up where you left off" hero zone with one-click resume into the right session, plus yesterday's decisions, things learned, what shipped, what failed, and what's still waiting for your reply. A "For you" insight card surfaces constructive observations on patterns from your own messages.
- **Independent of Memory.** Daily Briefing has its own toggle, model selection (default Haiku), and daily-budget cap. Turn off Memory and the briefing still runs; the two memory-derived blocks (Decisions / Commitments) hide gracefully.
- **Pin / Unpin projects in the sidebar.** Right-click any project group in the sessions list to pin it; pinned projects float to the top, sorted by most recently pinned first.
- **Claude Agent SDK upgraded to 0.3.150.** Adopts the new TaskCreate / TaskUpdate / TaskGet / TaskList tools (TodoWrite is gone upstream — old conversations keep rendering correctly), clearer streaming state (`requesting…` / `compacting…`) for the previously silent "thinking" gap, and a friendlier error when the selected model isn't available from the current provider.
- **Three-layer defense against streaming hangs.** Server-side iterator terminal-timeout, client snapshot staleness signal, and a DOM-side watchdog that reconciles from the database if the SSE channel goes silent for 30s+ on an active stream. Materially reduces the rare "Thinking…" stuck symptom on long sessions.
- **AskUserQuestion and ExitPlanMode no longer abort after 5 minutes.** These cards keep the stream alive for up to 6 hours, so stepping away from a permission prompt doesn't lose the turn.
- **Activity Panel — Clear completed.** Processes and Monitors sections gain a "Clear completed" button that wipes terminal-state rows for the current session without touching running services or parked monitors.
- **Scheduled task `suspend_turn` grace extended to 1 hour.** Suspensions comfortably survive lunch breaks, meetings, and brief lid-close.

</details>

<details>
<summary>v1.1.5 — Smoother Settings, Sharper Inspector, Quieter Chat</summary>

- **No more Settings hang on repeated navigation.** Settings sections, Channels, and Scheduled Tasks now stay responsive under heavy back-and-forth switching. Sidebar running-counts and the CLI import check are shared across re-mounts so re-mount bursts can't flood the request pipeline.
- **Inspector sharpened.** `⌘F` searches inside the active file; the panel mounts on the `/chat` empty state so the file tree is always reachable; search no longer yanks scroll to top; "Open in external editor" gets a pending state with an opened-in-external affordance.
- **Quieter chat surface.** Lighter sidebar typography, a revived chat skeleton, a muted plug icon for connection status, flat count badges (no more breathing pulse, gracefully truncates to "99+"), and the assistant message edge now aligns with the composer.
- **Steadier chat behavior.** Image Agent state is scoped per split column; permission profile no longer flips back to Default on new or switched sessions; MessageMinimap triggers and PlusMenu close-on-toggle were polished.
- **Chrome bridge no longer loops on failure.** A failed bridge start (e.g. Claude CLI missing) requires an explicit Retry now — no more silent auto-retry storms or lingering poll intervals in the main process.
- **Schedules** — session_mode control is back in the create / edit dialogs.

</details>

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
