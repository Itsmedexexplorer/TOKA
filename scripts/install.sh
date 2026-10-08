#!/bin/sh
# Install or update TO'KA on Linux with one command:
#
#   curl -fsSL https://raw.githubusercontent.com/Itsmedexexplorer/TOKA/main/scripts/install.sh | sh
#
# Ubuntu / Debian / Mint / Pop!_OS → .deb (via apt, so dependencies come too)
# Fedora / RHEL / openSUSE          → .rpm
# anything else                     → AppImage in ~/.local/bin, with an app-menu entry
set -eu

REPO="Itsmedexexplorer/TOKA"
BASE="https://github.com/$REPO/releases/latest/download"

say() { printf '\033[1m%s\033[0m\n' "$*"; }
die() { printf '\033[31m%s\033[0m\n' "$*" >&2; exit 1; }

[ "$(uname -s)" = Linux ] || die "This installer is for Linux. On Windows, see https://github.com/$REPO#windows"
[ "$(uname -m)" = x86_64 ] || die "TO'KA needs 64-bit Intel/AMD Linux (this computer is $(uname -m))."

if [ "$(id -u)" -eq 0 ]; then SUDO=""; else SUDO="sudo"; fi
tmp=$(mktemp -d)
chmod 755 "$tmp" # apt reads the package as its own user
trap 'rm -rf "$tmp"' EXIT

fetch() {
  say "Downloading $1…"
  if command -v curl >/dev/null 2>&1; then curl -fL --progress-bar -o "$2" "$BASE/$1"
  elif command -v wget >/dev/null 2>&1; then wget -q --show-progress -O "$2" "$BASE/$1"
  else die "Please install curl or wget first."; fi
}

if command -v apt-get >/dev/null 2>&1; then
  fetch TOKA-linux-amd64.deb "$tmp/toka.deb"
  say "Installing (you may be asked for your password)…"
  $SUDO apt-get install -y "$tmp/toka.deb"
elif command -v dnf >/dev/null 2>&1; then
  fetch TOKA-linux-x86_64.rpm "$tmp/toka.rpm"
  say "Installing (you may be asked for your password)…"
  $SUDO dnf install -y "$tmp/toka.rpm"
elif command -v zypper >/dev/null 2>&1; then
  fetch TOKA-linux-x86_64.rpm "$tmp/toka.rpm"
  say "Installing (you may be asked for your password)…"
  $SUDO zypper --non-interactive install --allow-unsigned-rpm "$tmp/toka.rpm"
else
  bin="$HOME/.local/bin"
  mkdir -p "$bin" "$HOME/.local/share/applications"
  fetch TOKA-linux-amd64.AppImage "$bin/toka.AppImage"
  chmod +x "$bin/toka.AppImage"
  # Runs without FUSE too (FUSE 2 is missing on many new distros).
  printf '#!/bin/sh\nAPPIMAGE_EXTRACT_AND_RUN=1 exec "%s" "$@"\n' "$bin/toka.AppImage" >"$bin/toka"
  chmod +x "$bin/toka"
  cat >"$HOME/.local/share/applications/toka.desktop" <<EOF
[Desktop Entry]
Type=Application
Name=TOKA
Comment=Agentic desktop companion
Exec=$bin/toka
Categories=Utility;
Terminal=false
EOF
  case ":$PATH:" in *":$bin:"*) ;; *) say "Add $bin to your PATH to run 'toka' from a terminal." ;; esac
fi

say "TO'KA is installed. Start it from your app menu, or run: toka"
