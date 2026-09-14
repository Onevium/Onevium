#!/bin/sh
# Download the official macOS installer, verify it, then open it.
set -eu
[ "$(uname -s)" = Darwin ] || { echo 'Use install.ps1 on Windows.' >&2; exit 1; }
arch=$(uname -m)
case "$arch" in arm64) ;; x86_64) arch=x64 ;; *) echo 'Unsupported architecture' >&2; exit 1 ;; esac
version=${1:-}
if [ -z "$version" ]; then
  release_url=$(curl --fail --silent --show-error --location --proto '=https' --proto-redir '=https' --output /dev/null --write-out '%{url_effective}' https://github.com/Onevium/Onevium/releases/latest)
  version=${release_url##*/}; version=${version#v}
fi
case "$version" in ''|*[!0-9.]*|.*|*..*) echo 'Expected a stable version such as 1.2.0' >&2; exit 1 ;; esac
asset="Onevium-$version-$arch.dmg"
base="https://github.com/Onevium/Onevium/releases/download/v$version"
work=$(mktemp -d "${TMPDIR:-/tmp}/onevium-install.XXXXXX")
trap 'rm -rf "$work"' EXIT HUP INT TERM
curl --fail --show-error --location --proto '=https' --proto-redir '=https' "$base/SHA256SUMS" -o "$work/SHA256SUMS"
curl --fail --show-error --location --proto '=https' --proto-redir '=https' "$base/$asset" -o "$work/$asset"
expected=$(awk -v name="$asset" '$2 == name { print $1 }' "$work/SHA256SUMS")
actual=$(shasum -a 256 "$work/$asset" | awk '{print $1}')
[ -n "$expected" ] && [ "$expected" = "$actual" ] || { echo 'Checksum mismatch; download was not opened.' >&2; exit 1; }
mkdir -p "$HOME/Downloads"
target="$HOME/Downloads/$asset"
[ ! -e "$target" ] || target="$HOME/Downloads/Onevium-$version-$arch-$(date +%s).dmg"
mv "$work/$asset" "$target"
printf 'Verified installer: %s\nDrag Onevium to Applications in the opened installer.\n' "$target"
open "$target"
