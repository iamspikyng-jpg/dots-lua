# dots-lua

Hyprland dotfiles with Lua config (Hyprland 0.55+).

## Installation (frais — tout faire)

### 0. Récupérer le repo

```bash
git clone -b master https://github.com/iamspikyng-jpg/dots-lua.git ~/dots-lua
cd ~/dots-lua
```

> Si tu as téléchargé le zip, extrais-le et `cd` dans le dossier.

### 1. Paquets

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

### 2. AUR

```bash
sudo pacman -S --needed base-devel
git clone https://aur.archlinux.org/yay-bin.git /tmp/yay-bin
cd /tmp/yay-bin && makepkg -si --noconfirm && cd ~

yay -S --needed zsh-theme-powerlevel10k zen-browser-bin brave-bin spicetify-cli exa ristretto inter-font
```

### 3. Oh My Zsh

```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
sudo ln -sf /usr/share/zsh-theme-powerlevel10k ~/.oh-my-zsh/custom/themes/powerlevel10k
```

### 4. Plugins Hyprland

```bash
hyprpm add https://github.com/hyprwm/hyprland-plugins
hyprpm add https://github.com/SandwichJellyfish/hyprfocus
hyprpm add https://github.com/DreamMaoMao/hyprbars
hyprpm enable borders-plus-plus hyprbars hyprfocus
```

### 5. Déployer les dotfiles

```bash
cd ~/dots-lua

# Backup (si tu avais déjà une config)
cp -r ~/.config/hypr ~/.config/hypr.bak 2>/dev/null

# Copier les dossiers
cp -r .config/hypr ~/.config/
cp -r .config/waybar ~/.config/
cp -r .config/swaync ~/.config/
cp -r .config/wlogout ~/.config/
cp -r .config/kitty ~/.config/
cp -r .config/colorschemes ~/.config/
cp -r .local/share/rofi ~/.local/share/

# Shell dotfiles
cp .zshrc .zshenv .p10k.zsh ~/

# Rendre exécutables
chmod +x ~/.config/waybar/scripts/launch.sh
chmod +x ~/.config/hypr/scripts/*.sh ~/.config/hypr/hyprlock/scripts/*.sh
chmod +x ~/.config/colorschemes/*.sh

# Dossiers manquants
mkdir -p ~/.config/swaync/icons ~/.local/bin ~/Documents/alchemy
```

### 6. Lancer Hyprland

```bash
# Déconnecte-toi de la session actuelle, puis :
Hyprland -c ~/.config/hypr/hyprland.lua
```

Ou si t'as un display manager (SDDM, GDM), sélectionne Hyprland dans la liste.

### 7. Changer le shell (optionnel)

```bash
chsh -s $(which zsh)
# déconnexion/reconnexion nécessaire
```

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
