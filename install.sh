#!/usr/bin/env bash
set -euo pipefail

REPO_URL="https://github.com/ilhamfirmansyahhub/configs-dolphin-geek.git"
SCRIPT_DIR="$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)"

info() { printf '\033[1;34m==>\033[0m %s\n' "$1"; }
warn() { printf '\033[1;33m[!]\033[0m %s\n' "$1"; }

if [[ "${EUID:-$(id -u)}" -eq 0 ]]; then
  echo "Please run this installer as your normal user, not root."
  exit 1
fi

# This configuration is targeted at Arch Linux and CachyOS.
install_dependencies() {
  if command -v pacman >/dev/null 2>&1; then
    info "Installing required packages"
    sudo pacman -S --needed \
      dolphin \
      qt6ct \
      kvantum \
      papirus-icon-theme \
      ttf-space-mono-nerd \
      ttf-jetbrains-mono-nerd
  else
    warn "pacman was not found. Please install the required packages listed in packages.txt manually."
  fi
}

install_dependencies

mkdir -p "$HOME/.config/qt6ct"

backup_file() {
  local file="$1"
  if [[ -f "$file" ]]; then
    local backup="${file}.backup.$(date +%Y%m%d-%H%M%S)"
    cp -a "$file" "$backup"
    warn "Backed up existing $(basename "$file") to $backup"
  fi
}

backup_file "$HOME/.config/dolphinrc"
backup_file "$HOME/.config/qt6ct/qt6ct.conf"

info "Installing Dolphin configuration"
cp -f "$SCRIPT_DIR/dolphin/dolphinrc" "$HOME/.config/dolphinrc"

info "Installing Qt6ct configuration"
cp -f "$SCRIPT_DIR/qt6ct/qt6ct.conf" "$HOME/.config/qt6ct/qt6ct.conf"

printf '\n\033[1;32mDone!\033[0m Dolphin configuration has been installed.\n'
printf 'Installed dependencies: Dolphin, Qt6ct, Kvantum, Papirus-Dark, Space Mono Nerd Font, JetBrains Mono Nerd Font.\n'
printf 'Restart Dolphin for the changes to take effect.\n'
printf '\nRepository: %s\n' "$REPO_URL"
