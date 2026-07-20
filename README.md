# dots-lua

Hyprland dotfiles with Lua config (Hyprland 0.55+).

## Install (dans l'ordre)

### 1. Paquets essentiels

```bash
sudo pacman -S --needed \
  hyprland hyprlock hypridle hyprpicker swww \
  waybar wlogout rofi-wayland swaync \
  kitty alacritty \
  zsh grim slurp pamixer playerctl brightnessctl \
  polkit-gnome udiskie pipewire wireplumber \
  libnotify jq awk curl git \
  thunar nautilus cava pavucontrol \
  ttf-jetbrains-mono-nerd ttf-nerd-fonts-symbols
```

### 2. AUR helper + paquets

```bash
# yay
sudo pacman -S --needed base-devel
git clone https://aur.archlinux.org/yay-bin.git /tmp/yay-bin
cd /tmp/yay-bin && makepkg -si --noconfirm && cd ~

# AUR
yay -S --needed zsh-theme-powerlevel10k zen-browser-bin brave-bin spicetify-cli exa ristretto inter-font
```

### 3. Oh My Zsh

```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
sudo ln -sf /usr/share/zsh-theme-powerlevel10k ~/.oh-my-zsh/custom/themes/powerlevel10k
```

### 4. Hyprland plugins

```bash
hyprpm add https://github.com/hyprwm/hyprland-plugins
hyprpm add https://github.com/SandwichJellyfish/hyprfocus
hyprpm add https://github.com/DreamMaoMao/hyprbars
hyprpm enable borders-plus-plus hyprbars hyprfocus
```

### 5. Déployer les dotfiles

```bash
# Backup
cp -r ~/.config/hypr ~/.config/hypr.bak

# Copier
cp -r dots-lua/.config/hypr ~/.config/
cp -r dots-lua/.config/waybar ~/.config/
cp -r dots-lua/.config/swaync ~/.config/
cp -r dots-lua/.config/wlogout ~/.config/
cp -r dots-lua/.config/kitty ~/.config/
cp -r dots-lua/.config/colorschemes ~/.config/
cp -r dots-lua/.local/share/rofi ~/.local/share/
cp dots-lua/.zshrc dots-lua/.zshenv dots-lua/.p10k.zsh ~/

# Rendre exécutables
chmod +x ~/.config/waybar/scripts/launch.sh
chmod +x ~/.config/hypr/scripts/*.sh
chmod +x ~/.config/hypr/hyprlock/scripts/*.sh
chmod +x ~/.config/colorschemes/*.sh
```

### 6. Post-install

```bash
# Dossiers manquants
mkdir -p ~/.config/swaync/icons ~/.local/bin ~/Documents/alchemy

# Changer le shell
chsh -s $(which zsh)

# Redémarrer
reboot
```

Une fois redémarré, sélectionne Hyprland dans ton display manager.

## Raccourcis

| Touche | Action |
|--------|--------|
| `ALT + Return` | Terminal (kitty) |
| `ALT + D` | App launcher (rofi) |
| `ALT + T` | Theme switcher |
| `ALT + SHIFT + T` | Changer wallpaper |
| `ALT + 1-9` | Workspace |
| `ALT + W/K` | Fermer fenêtre |
| `ALT + F` | Fullscreen |
| `ALT + V` | Toggle float |
| `ALT + A` | Centre de notifications |
| `ALT + L` | Lock screen |
| `CTRL + ALT + DEL` | Menu power (wlogout) |
| `F1-F3` | Volume |
| `F5-F6` | Luminosité |
| `F9-F11` | Media (prev/play/next) |

## Thèmes

Changer dans `~/.config/hypr/colors/colors.lua`.

Disponibles : rose-pine, catppuccin-mocha, everforest-dark, gruvbox-dark, kanagawa, monochrome, nightfox, nord, tokyo-night, e-ink, matugen

## Structure

```
~/.config/
├── hypr/          # Hyprland (Lua)
│   ├── hyprland.lua
│   ├── modules/   # 14 modules
│   ├── colors/    # 11 thèmes
│   └── scripts/   # volume, brightness, wlogout...
├── waybar/        # Barre d'état
├── swaync/        # Notifications
├── wlogout/       # Menu power
├── kitty/         # Terminal
└── colorschemes/  # Système de thèmes complet
~/.local/share/rofi/   # App launcher
```
