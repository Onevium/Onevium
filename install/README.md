# Install Onevium

[English home](../README.md) · [中文首页](../README.zh-CN.md)

These helpers download an official GitHub Release asset, verify its SHA-256 against the release's `SHA256SUMS`, and open the normal installer. They do not change permissions, bypass operating-system security, or silently replace a running app. Close Onevium before installing an update.

**macOS:** download [install.sh](install.sh), inspect it, then run `sh install.sh 1.2.1`. Omit the version to select the latest stable release. Apple Silicon and Intel are detected automatically. Drag the app into Applications when the DMG opens.

**Windows x64:** download [install.ps1](install.ps1), inspect it, then run `powershell -File .\install.ps1 -Version 1.2.1`. Omit `-Version` to select the latest stable release. Follow your organization's PowerShell execution policy; the helper does not bypass it.

The checksum protects against incomplete or mismatched downloads; it is not a substitute for a publisher certificate. See the selected release's signing and compatibility notes. Helpers require internet access to GitHub and its asset host; macOS requires the built-in curl and shasum tools. Windows requires PowerShell 5.1 or newer. Windows helper execution is not yet verified on a Windows host.

For direct downloads or if a helper fails, use [Releases](https://github.com/Onevium/Onevium/releases/latest). Older releases without `SHA256SUMS` need a direct download.
