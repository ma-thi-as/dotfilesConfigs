# 🚀 Dotfiles Configuration

A curated collection of configuration files for a minimal and productive Linux desktop environment using BSPWM as the window manager.

## ✨ Features

- **BSPWM**: Tiling window manager configuration
- **SXHKD**: Simple X hotkey daemon setup
- **Polybar**: Status bar with system information
- **Kitty**: Modern, fast terminal emulator
- **Custom themes and colors**
- **Productivity-focused keybindings**

## 📦 Dependencies

### Core Components
- `bspwm` - Window Manager
- `sxhkd` - Hotkey Daemon
- `picom` - Compositor
- `polybar` - Status Bar

### Terminal & Shell
- `kitty` - Terminal Emulator
- `zsh` - Shell
- `powerlevel10k` - ZSH Theme

### Additional Tools
- `feh` - Wallpaper Setting
- `nvim` - Text Editor
- `rofi` - Application Launcher (optional)

## 🔧 Installation

1. Clone the repository:
```bash
git clone https://github.com/ma-thi-as/dotfilesConfigs.git
cd dotfilesConfigs
```

2. Install required packages (Arch Linux):
```bash
sudo pacman -S bspwm sxhkd picom polybar kitty zsh feh neovim, rofi
sudo apt install bspwm sxhkd picom polybar kitty zsh feh neovim, rofi
```

3. Install powerlevel10k:
```bash
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/.powerlevel10k
```

4. Copy configuration files:
```bash
# Backup your existing configs (recommended)
mkdir -p ~/dotfiles-backup
cp -r ~/.config ~/dotfiles-backup/

# Copy new configurations
cp -r home/* ~/
cp -r .config/* ~/.config/
```

## 📁 Directory Structure

```
dotfilesConfigs/
├── home/
│   ├── .zshrc
│   ├── .p10k.zsh
│   └── ...
├── .config/
│   ├── bspwm/
│   ├── sxhkd/
│   ├── kitty/
│   ├── polybar/
│   ├── picom/
│   └── nvim/
└── README.md
```

## ⌨️ Key Bindings

### Window Management
- `Super + Enter` - Open terminal
- `Super + Space` - Open application launcher
- `Super + [1-9]` - Switch to workspace
- `Super + Shift + [1-9]` - Move window to workspace

### Additional bindings can be found in `.config/sxhkd/sxhkdrc`

## 🎨 Customization

- Wallpapers are stored in `~/.wallpapers/`
- Color schemes can be modified in `.config/kitty/kitty.conf`
- Polybar modules can be configured in `.config/polybar/modules.ini`

## 📸 Screenshots

![imagen](https://github.com/user-attachments/assets/dd44f074-4848-4d10-93e0-bb4c66f4e318)


## ⚠️ Troubleshooting

- If BSPWM doesn't start, check if `~/.xinitrc` contains `exec bspwm`
- For Polybar issues, check the log with `polybar -l info`
- Make sure all config files have correct permissions: `chmod +x ~/.config/bspwm/bspwmrc`
