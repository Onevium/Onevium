# Install Onevium / 安装 Onevium

[English home](../README.md) · [中文首页](../README.zh-CN.md)

These helpers download an official GitHub Release installer, verify its SHA-256 against that release's `SHA256SUMS`, and open the normal installation interface. They select the latest **stable** release when no version is given. The current stable release is **1.2.3**; 1.3.0 is a feature preview, with no public installer yet.

安装助手从官方 GitHub Release 下载安装包，核对同一版本的 `SHA256SUMS`，再打开正常安装界面。不指定版本时选择最新**稳定版**。当前稳定版是 **1.2.3**；1.3.0 仍是功能预览，尚无公开安装包。

## macOS · Apple Silicon / Intel

Paste this line into Terminal. It downloads the complete helper before running it. / 在终端粘贴这一行，完整下载助手后再执行：

```sh
curl -fsSL https://raw.githubusercontent.com/Onevium/Onevium/main/install/install.sh -o onevium-install.sh && sh onevium-install.sh
```

The helper detects Apple Silicon or Intel, verifies the DMG, and opens it. Drag Onevium into Applications to finish. Quit Onevium before updating. / 助手自动识别芯片、校验 DMG 并打开安装界面。将 Onevium 拖入「应用程序」完成安装；更新前先退出 Onevium。

To inspect the helper first, read [install.sh](install.sh), or download it and open it before running `sh onevium-install.sh`. To choose a published version: / 可先阅读 [install.sh](install.sh)，或下载后查看，再运行。指定已发布版本：

```sh
sh onevium-install.sh 1.2.3
```

## Windows x64 · PowerShell

```powershell
$p = Join-Path $env:TEMP 'onevium-install.ps1'; Invoke-WebRequest 'https://raw.githubusercontent.com/Onevium/Onevium/main/install/install.ps1' -OutFile $p -UseBasicParsing -ErrorAction Stop; & $p
```

The helper downloads and verifies the EXE, then opens its setup wizard. It uses your existing execution policy. If scripts are blocked, use a [direct installer download](https://github.com/Onevium/Onevium/releases/latest). / 助手下载并校验 EXE，然后打开安装向导，遵循现有脚本执行策略。若脚本被系统策略阻止，请[直接下载安装包](https://github.com/Onevium/Onevium/releases/latest)。

Read [install.ps1](install.ps1) before running if you want to inspect it. Once downloaded, choose a published version with: / 可先阅读 [install.ps1](install.ps1)。下载后，指定已发布版本：

```powershell
& (Join-Path $env:TEMP 'onevium-install.ps1') -Version 1.2.3
```

**Windows helper execution has not yet been verified on a Windows host.** The command is for Windows x64, not Windows ARM64, macOS, or Linux PowerShell. / **Windows 助手尚未在 Windows 主机实测。** 命令面向 Windows x64，不适用于 Windows ARM64 或 macOS、Linux 上的 PowerShell。

## Requirements and direct downloads / 使用条件与直接下载

- Internet access to GitHub, `raw.githubusercontent.com`, and GitHub's asset host is required. / 需要能访问 GitHub、脚本地址和发行资产下载服务。
- macOS uses the built-in `curl` and `shasum`; Windows needs PowerShell 5.1 or newer. / macOS 使用系统自带的 `curl` 和 `shasum`；Windows 需要 PowerShell 5.1 或更新版本。
- Helpers open the normal installer; they do not silently replace an app or change operating-system security settings. / 助手打开正常安装界面，不会静默替换应用或更改系统安全设置。
- A checksum detects incomplete or mismatched downloads; it is not a publisher certificate. Read the release's [signing and compatibility notes](https://onevium.com/docs/installation) / [签名与兼容性说明](https://onevium.com/zh/docs/installation)。
- Older releases without `SHA256SUMS` need a direct download. The helpers accept stable version numbers, such as `1.2.3`, without a leading `v`. / 不含 `SHA256SUMS` 的旧版需直接下载。指定版本使用 `1.2.3` 这样的稳定版本号，不加 `v`。
- The current stable release has no Linux or Windows ARM64 installer. / 当前稳定版没有 Linux 或 Windows ARM64 安装包。

[Download latest stable / 下载最新稳定版](https://github.com/Onevium/Onevium/releases/latest) · [All releases / 所有版本](https://github.com/Onevium/Onevium/releases)
