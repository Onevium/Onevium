<div align="center">

<img src="icon.png" alt="Onevium" width="104" />

# Onevium

### 把想法做出来，把成果留在眼前。

一个围绕项目的 AI 工作台。写代码、看网页、做图、整理文件，边对话，边检查结果。

**项目与会话 · 浏览器 · 文件与 Review · 图片创作 · Skills 与自动化**

[下载稳定版](https://github.com/Onevium/Onevium/releases/latest) · [快速安装](#快速安装) · [使用文档](https://onevium.com/zh/docs) · [English](README.md)

</div>

![Onevium 1.3.0 研发工作台：项目会话、任务讨论与网页成果在同一界面中展示](assets/workspace-1.2.4.png)

> **Onevium 1.3.2 已发布。** 请阅读[新功能与升级须知](releases/1.3.2.zh-CN.md)；macOS 这一次需要下载 DMG 手动安装。截图拍摄于 1.3.0 开发阶段，使用真实界面组件的隔离演示，项目、对话和报表均为模拟数据。

## 快速安装

**macOS · Apple Silicon / Intel** — 打开终端，复制这一行：

```sh
curl -fsSL https://raw.githubusercontent.com/Onevium/Onevium/main/install/install.sh -o onevium-install.sh && sh onevium-install.sh
```

自动识别芯片，下载官方稳定版安装包，核对 SHA-256，然后打开安装界面。将 Onevium 拖入「应用程序」即可完成安装；更新前先退出正在运行的 Onevium。

**Windows x64** — 在 PowerShell 中运行：

```powershell
$p = Join-Path $env:TEMP 'onevium-install.ps1'; Invoke-WebRequest 'https://raw.githubusercontent.com/Onevium/Onevium/main/install/install.ps1' -OutFile $p -UseBasicParsing -ErrorAction Stop; & $p
```

下载脚本后按系统现有策略运行，校验安装包并打开安装向导。Windows 命令尚未在 Windows 主机实测；若策略不允许运行脚本，可直接下载安装包。

| 系统 | 当前稳定版安装包 |
| --- | --- |
| macOS · Apple Silicon | [下载 arm64 DMG](https://github.com/Onevium/Onevium/releases/download/v1.3.2/Onevium-1.3.2-arm64.dmg) |
| macOS · Intel | [下载 x64 DMG](https://github.com/Onevium/Onevium/releases/download/v1.3.2/Onevium-1.3.2-x64.dmg) |
| Windows · x64 | [下载 EXE](https://github.com/Onevium/Onevium/releases/download/v1.3.2/Onevium-Setup-1.3.2.exe) |

当前稳定版没有 Linux 或 Windows arm64 安装包。[查看脚本、指定版本与安装说明](install/README.md) · [系统兼容性与签名说明](https://onevium.com/zh/docs/installation)

## 从提问，到可以接着用的成果

把一次任务需要的对话、网页、文件和预览放进同一个项目。让 AI 执行工作，再在旁边检查页面、对照改动、继续提出下一步。

| 你想做什么 | Onevium 如何帮你完成 |
| --- | --- |
| **做一个产品页面** | 围绕项目讨论需求，编辑文件，打开网页预览，在 Review 中逐项检查改动。 |
| **整理一份数据报告** | 读取文件、分析数据，把摘要和图表放在一起，再追问下一步行动。 |
| **尝试不同方案** | 从已有回复分支出新会话；开发任务也能放进独立 Git 工作树。 |
| **创作和修改图片** | 连接图像服务，在图像页从模板、描述或参考图开始生成，再圈选区域、添加批注，告诉 AI 继续修改哪里。 |
| **检查服务器或数据库** | 把主机或连接保存到「秘钥与主机」，让 AI 执行你批准的命令，密码不必贴进对话。 |
| **在同一网站使用多个账号** | 给内置浏览器的每个身份独立的登录状态和网络线路；AI 不确定该用哪个身份时会先问你。 |
| **接续日常工作** | 用项目保存上下文，用 Skills 复用流程，用定时任务安排下一次执行。 |

## 1.3.2：有依据的记忆、浏览器身份与菜单栏快捷中心

### 每条记忆都能看到来源

记忆只从你说过的话和确认过的内容中提取，每条都能看到来源对话、依据和修改记录。在记忆库中按空间浏览，查看一条记忆和其他记忆的关联以及使用次数。回答用到记忆时会标出来，点开就能看到依据；遗忘的内容不会再被召回。

1.3.1 的记忆全部保留。升级后向量索引会在后台重建，期间仍可按关键词召回。

[记忆与回顾](https://onevium.com/zh/docs/memory-and-recap)

### 浏览器身份各有网络线路

内置浏览器可以保存多个身份，每个身份有独立的 Cookie、登录状态和网络线路（HTTP / HTTPS / SOCKS5）。新标签按会话记住所用身份；网站权限请求改为气泡提示，登录时会询问是否保存密码。线路在「设置 → 网络」中统一管理。

[浏览器使用指南](https://onevium.com/zh/docs/browser-automation)

### 菜单栏快捷中心

从 macOS 菜单栏（Windows 托盘）打开快捷中心，查看等待确认、进行中和最近的会话，以及今天和近七天的用量；还可以搜索并复制秘钥库里的验证码和密码，或生成密码。会话完成、需要确认或出错时也会发送系统通知。

### 千问与小米 MiMo

新增阿里云千问（国内 / 国际 / Coding Plan）和小米 MiMo（含 Token Plan）预设，并同步 2026-10-25 各服务商的最新模型。

[连接指南](https://onevium.com/zh/docs/providers) · [查看 1.3.2 全部更新](releases/1.3.2.zh-CN.md)

### 升级前请了解

首次启动会先备份并校验数据再升级，升级后 1.3.1 无法读取新数据。macOS 这一次需要下载 DMG 手动安装；从 1.3.2 起使用固定签名，以后的版本可以在应用内更新。更新后需要重新授予一次录屏、麦克风和输入监控权限；每个新版本首次启动时钥匙串会请求一次登录密码，请选择「始终允许」。[安装与更新 Onevium](https://onevium.com/zh/docs/installation#updates)

<details>
<summary><strong>1.3.1：秘钥、服务器和图片各得其所</strong></summary>

### 让 AI 按引用使用保存的凭据

在「设置 → 秘钥与主机」中保存服务器、数据库、API 和云账号凭据，由系统钥匙串加密。AI 只按名称引用；命令运行时由 Onevium 在本机填入秘钥，遮蔽输出中的已知秘钥，并遵循你设置的授权范围。已有配置文件和 CLI 账号里的秘钥可以直接导入，不必重新输入；保存两步验证种子后，验证码也能自动填写。

AI 使用默认关闭，需要时再开启。授权可设时限或免询问时段；普通请求默认在两分钟无人响应后允许一次，可在设置中改为拒绝。SSH 私钥、云服务 CLI 配置等凭据文件同样受保护：AI 读取前必须在本机征得你的同意。

### 在 SSH 服务器上继续工作

添加服务器或从 `~/.ssh/config` 导入，首次连接时核对指纹，然后让 AI 执行命令、读写文件。可以只授权一次、授权几分钟或整个会话，随时停止；锁屏后所有授权立即失效。

### 图片有了自己的页面

从导航栏打开「图像」，以模板或风格起步，选择图片服务、比例、分辨率和张数，所有结果都留在「我的作品」里。需要修改时，在图片旁接着原会话继续。

图片创作需要单独配置图片服务。

[图片生成与画布](https://onevium.com/zh/docs/image-creation)

### 回复读起来更顺

逐词揭幕效果改为逐词呈现，卡片平滑出现；回复完成、过程收起时画面保持不动；切换会话一次到位。

[1.3.1 发布说明](releases/1.3.1.zh-CN.md)

</details>

<details>
<summary><strong>1.3.0：更自由地组织工作</strong></summary>

### 工作台跟着任务走

新的导航栏、侧栏和标签页把项目、会话与成果组织在一起。浏览器、文件、终端和 Review 各有位置；需要更大预览时，还可以把对话收至角落，以浮层继续交流。

查看本轮改动、分支差异或整个工作区，在代码行旁写下意见，再交给 AI 继续处理。多个 Git 仓库的项目可以选择相应仓库，或使用独立工作树隔离任务。

[文件、终端与 Review](https://onevium.com/zh/docs/files-terminal-review) · [工作树](https://onevium.com/zh/docs/worktrees)

### 灵感可以分支，讨论可以回到之前

从一条已有回复创建新会话，沿另一条思路继续，同时保留原来的讨论。需要重来时，可以预览回退范围，再选择只回退对话或恢复已记录的文件改动。文件历史缺失或有冲突时，文件恢复可能不可用。

[项目与会话](https://onevium.com/zh/docs/projects-and-sessions)

### 浏览器里的身份也能分开

为浏览器标签页选择不同身份，在同一网站分别使用工作和测试账号；也可以指定新页面默认使用的身份，或只清理某个网站的数据。

macOS 还支持从 Chrome、Edge、Brave 导入 Cookie 和已保存密码，并提供密码管理入口。**导入 Cookie 不保证恢复登录状态**，网站仍可能要求重新登录或验证。

[浏览器使用指南](https://onevium.com/zh/docs/browser-automation)

### 图片创作成为工作的一部分

连接支持的 OpenAI 或 Google Gemini 图像服务，把描述、参考图和修改要求放进对话。生成后可圈选区域、添加批注、比较修改前后、查看历史版本，并保存需要的结果。

图片创作需要单独配置图像服务，并启用对应工具；可用模型和费用由所连接的服务决定。

[图片生成与画布](https://onevium.com/zh/docs/image-creation) · [1.3.0 发布说明](releases/1.3.0.zh-CN.md)

</details>

## 让数据变成值得讨论的结果

“分析这周的店铺数据，画出收入趋势，给我一个下周值得尝试的改进。”

从一份小表格开始，让摘要、趋势和渠道对比出现在同一工作台。看到依据，再继续讨论判断。

![Onevium 1.3.0 报告工作台：模拟店铺周报、收入趋势和渠道占比](assets/report-1.2.4.png)

*图中的销售额、订单、渠道和结论均为模拟示例，不对应真实店铺。*

[试试研发与报表示例](examples/README.md) · [图表工作流](https://onevium.com/zh/docs/widget-workflows)

## 接入你已有的服务，留下自己的工作方式

- **选择模型服务。** 使用 Claude Code 登录，或配置支持的模型服务商及自定义连接。Onevium 账号与许可证、模型服务权限分别配置。[连接指南](https://onevium.com/zh/docs/providers)
- **把常用流程保存为 Skill。** 为重复任务写清输入、步骤和交付要求；通过 MCP 和插件接入所需工具。[Skills](https://onevium.com/zh/docs/skills) · [MCP](https://onevium.com/zh/docs/mcp-servers) · [插件](https://onevium.com/zh/docs/plugins)
- **让不同角色协作。** 使用专门的 Agent 和队伍协作组织任务，查看成员进度，再检查交付结果。[队伍协作](https://onevium.com/zh/docs/teams)
- **安排重复任务。** 设置定时任务，在本机 Onevium 运行期间按计划执行。[定时自动化](https://onevium.com/zh/docs/scheduled-runs)
- **连接消息渠道。** 按需配置飞书、钉钉、Discord 或微信，让消息会话成为工作的入口。[渠道指南](https://onevium.com/zh/docs/team-channels)

## 选一个适合长时间工作的主题

暖纸、浅色、Nord、Catppuccin——让侧栏、对话与预览保持协调。下面展示同一份模拟报告在四种内置主题下的样子。

![Onevium 1.3.0 的暖纸、浅色、Nord 和 Catppuccin 四种内置主题](assets/themes-1.2.4.png)

## 第一次打开，试着完成一件小事

1. 安装 Onevium，完成账号登录或许可证激活，再连接可用的模型服务。
2. 选择一个项目目录，创建会话。
3. 输入一个具体目标，例如：**“为这个项目做一页清晰的产品介绍，展示预览，再列出你改了哪些文件。”**
4. 查看成果和文件改动，继续调整。需要复用流程时，再加入 Skill。

[快速开始](https://onevium.com/zh/docs/getting-started) · [基础指南](guides/README.md) · [Onevium 技能社区](https://github.com/Onevium/onevium-skill-community)

---

[官网](https://onevium.com) · [完整文档](https://onevium.com/zh/docs) · [版本记录](CHANGELOG.md) · [问题反馈](https://github.com/Onevium/Onevium/issues) · support@onevium.com

本仓库提供 Onevium 的产品介绍、演示素材、公开安装辅助脚本和 Release 安装包，不包含应用源码。各已发布版本的具体变化请查看[发布记录](https://github.com/Onevium/Onevium/releases)。
