clear
rm -rf ~/.config/lutris
rm -rf ~/.local/share/lutris
sudo pacman -Rs $(pacman -Qdtq)
rm -rf ~/.wine
sudo pacman -Rs $(pacman -Qdtq)
clear
ls
sudo find / -name "*wine*"
clear
sudo pacman -S wine 
clear
sudo pacman -S lutris
clear
ls
lutris
clear
 cd Downloads/
ls
thunar .
ls
cd Resident.Evil.4.Ultimate.HD.Edition-RELOADED
ls
thunar .
cd
ls
mkdir Games
ls
cd ls
cd Games/
ls
mkdir prefixes
mkdir installers
cd
cd Downloads/
ls
cd Resident.Evil.4.Ultimate.HD.Edition-RELOADED
thunar .
cd ~/Games/
ls
cd installers/
ls
cd rld-reev4/
ls
lutris 
clear
wine --version
meson --version
sudo pacman -S mingw-w64
sudo pacman -S glslang
clear
cd .
cd ..
ls
git clone --recursive https://github.com/doitsujin/dxvk.git
cd dxvk/
ls
./package-release.sh master . --no-package
ls
lutris 
cd ..
cd rld-reev4/
ls
wine setup
ls ../../resident-evil-4/
cd ../../resident-evil-4/
ls
cd Resident\ Evil\ 4/
ls
cp ~/Games/installers/rld-reev4/Crack/Bin32/* .
ls
mv steam_api.* Bin32/
ls
cd Bin32/
ls
wine bio4.exe 
lutris 
clear
steam
killall steam
steam
pgrep steam
kill -9 43303
pgrep steam
kill -9 43490
pgrep steam
steam
killall polybar
cd Games/resident-evil-4/Resident\ Evil\ 4/
ls
wine Bin32/bio4.exe 
clear
winetricks
sudo pacman -S winetricks
winetricks 
winetricks winetricks d3dx9 vcrun2005 vcrun2008 vcrun2010 dsound xinput wmp9 corefonts dotnet40
d3dx9 vcrun2005 vcrun2008 vcrun2010 dsound xinput wmp9 corefonts dotnet40 winetricks
winetricks d3dx9 vcrun2005 vcrun2008 vcrun2010 dsound xinput wmp9 corefonts dotnet40
clear
ls
cd Bin32/
ls
wine bio4.exe 
lutris 
cd .config/
mkdir polybar
cd polybar
echo "[colors]
background = #1a1b26
background-alt = #272A2E
foreground = #9EC8B9
primary = #FF004D
secondary = #7E2553
alert = #FF0000
disabled = #5C8374
   
[bar/bar1]
width = 100%
height = 20pt
radius = 4

dpi = 96

background = ${colors.background}
foreground = ${colors.foreground}



line-size = 4pt
border-size = 4pt
#border-color = #0000000
padding-left = 2
padding-right = 2
module-margin = 1.5

separator = 
separator-foreground = ${colors.disabled}

font-0 = "FantasqueSansM Nerd Font:style=Italic:size=11;1"

modules-center =  xworkspaces xwindow
modules-left = date filesystem   memory cpu pulseaudio 
modules-right = wlan xkeyboard battery

cursor-click = pointer
cursor-scroll = ns-resize

enable-ipc = true

[module/xworkspaces]
type = internal/xworkspaces

label-active = %name%
label-active-background = ${colors.background-alt}
label-active-underline= ${colors.primary}
label-active-padding = 1

label-occupied = %name%
label-occupied-padding = 1

label-urgent = %name%
label-urgent-background = ${colors.alert}
label-urgent-padding = 1

label-empty = %name%
label-empty-foreground = ${colors.disabled}
label-empty-padding = 1

[module/xwindow]
type = internal/xwindow
label = %title:0:30:...% 

[module/filesystem]
type = internal/fs
interval = 25

mount-0 = /

label-mounted =  %percentage_free%%
label-mounted-foreground = ${colors.primary}
label-unmounted = %mountpoint% not mounted
label-unmounted-foreground = ${colors.disabled}

[module/pulseaudio]
type = internal/pulseaudio

format-volume-prefix = "󰕾 "
format-volume-prefix-foreground = ${colors.primary}
format-volume = <label-volume>

label-volume = %percentage%%

label-muted = muted 󰝟
label-muted-foreground = ${colors.disabled}

[module/xkeyboard]
type = internal/xkeyboard
blacklist-0 = num lock

label-layout = %layout%
label-layout-foreground = ${colors.primary}

label-indicator-padding = 2
label-indicator-margin = 1
label-indicator-foreground = ${colors.background}
label-indicator-background = ${colors.secondary}

[module/memory]
type = internal/memory
interval = 2
format-prefix = "RAM "
format-prefix-foreground = ${colors.primary}
label = %percentage_used:2%%

[module/cpu]
type = internal/cpu
interval = 2
format-prefix = "󰻠 "
format-prefix-foreground = ${colors.primary}
label = %percentage:2%%


[module/date]
type = internal/date
interval = 1

date = %H:%M
date-alt = %Y-%m-%d %H:%M:%S

label =  %date% 󰥔
label-foreground = ${colors.primary}

[settings]
screenchange-reload = true
pseudo-transparency = true

[network-base]
type = internal/network
interval = 5
format-connected = <label-connected>
format-disconnected = <label-disconnected>
label-disconnected = %{F#F0C674}%ifname%%{F#707880} disconnected

[module/wlan]
inherit = network-base
interface = wlo1
label-connected = %{F#F0C674}   %essid%%{F-} %netspeed%

[module/battery]
type = internal/battery
full-at = 99

low-at = 5
battery = BAT0
adapter = ADP1

poll-interval = 5
; see "man date" for details on how to format the time string
; NOTE: if you want to use syntax tags here you need to use %%{...}
; Default: %H:%M:%S
time-format = %H:%M

format-charging = <label-charging> <animation-charging> 

format-discharging =  <label-discharging> <ramp-capacity>

label-charging = Charging %percentage%%  

label-discharging = Discharging %percentage%%  

label-full = 󱈏   

label-low = BATTERY LOW

; Only applies if <ramp-capacity> is used
ramp-capacity-0 =   
ramp-capacity-1 =  
ramp-capacity-2 =  
ramp-capacity-3 =  
ramp-capacity-4 =  

; Only applies if <bar-capacity> is used
bar-capacity-width = 10

; Only applies if <animation-charging> is used
animation-charging-0 = 
animation-charging-1 = 
animation-charging-2 = 
animation-charging-3 = 
animation-charging-4 = 
; Framerate in milliseconds
animation-charging-framerate = 750

; Only applies if <animation-discharging> is used
animation-discharging-0 = 
animation-discharging-1 = 
animation-discharging-2 = 
animation-discharging-3 = 
animation-discharging-4 = 
; Framerate in milliseconds
animation-discharging-framerate = 500

; Only applies if <animation-low> is used
; New in version 3.6.0
animation-low-0 = !
animation-low-1 = 
animation-low-framerate = 200
; vim:ft=dosini" > config.ini
ls
ls
vim config.ini
clear
fc-list | grep -i cas*
clear
ls
vim config.ini 
killall polybar
vim config.ini 
fc-list | grep -i jet*
vim config.ini 
clear
cd ..
vim kitty/kitty.conf 
vim kitty/themes/Alucard.conf
vim kitty/kitty.conf 
cd kitty/
vim themes/Brogrammer.conf
vim kitty.conf 
killall polybar
ex usermod -aG video $USER
sudo usermod -aG video $USER
usermod -aG video $USER
clear
groups video
groups --help
groups -h
groups $USER
usermod -aG video $USER
sudo usermod -aG video $USER
sudo usermod -aG video m
groups $USER
vim 
curl -fLo ~/.vim/autoload/plug.vim --create-dirs     https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
clear
ls
vim
vim
vim
vim .vimrc 
clear
ls
vim
clear
ls
vim a.py
clear
ls
ls -la
clear
vim .vimrc 
vim 
vim 
vim .vim/plugged/DarkScene.vim/colors/darkscene.vim 
clear
vim 
vim .vim/plugged/DarkScene.vim/colors/darkscene.vim 
vim .vim/plugged/DarkScene.vim/colors/darkscene.vim 
vim .vimrc 
vim
vim
vim
fastfetch
pgrep  wine
ls
vim
vim ~/.vimrc 
source ~/.vimrc 
vim
sudo vim /sys/class/backlight/intel_backlight
sudo vim /sys/class/backlight/intel_backlight/brightness 
cd Games/
cd installers/
ls
cd emp-doom.eternal.ancient.gods/
ls
wine setup.exe 
cd
cd Downloads/
ls
rm -rf *
ls
cd ..
ls
cd Games/
s
ls
rm -rf installers/*
ls
ls
cd games/
ls
cd ..
l
ls
fastfetch 
ls /tmp/
rm -rf  /tmp/*
sudo rm -rf  /tmp/*
fastfetch 
ls
sudo du -ah / | sort -rh | head -n 20
steam
killall stema
killall steam
sudo du -ah / | sort -rh | head -n 20
ls
ls resident-evil-4/
mv resident-evil-4/Resident\ Evil\ 4/ games/
ls
rm -rf resident-evil-4/
sudo du -ah / | sort -rh | head -n 20
ls /home/m/.local/share/
rm -rf /home/m/.local/share/flatpak/
sudo pacman -Rs qbittorrent
sudo reboot
cd ~/Downloads/
ls
cd DOOM\ Eternal
thunar .
fastfetch 

sudo pacman -S deluge
deluge
deluge web
deluge console
clear
deluge
deluge web
deluge-web 
killall delug
killall deluge
killall qbittorrent
killall qbittorrent 
ps aux | grep deluge-web

ps aux | grep deluge-web
killall 83021
kill -9 83021
ps aux | grep deluge-web
kill -9 83284
ps aux | grep deluge-web
kill -9 83294
clear
deluge-web 
kill -9 83294
nano .config/deluge/auth 
clear
sudo pacman -Rs deluge
clear
kill -9 83294
ps aux | grep deluge-web
kill -9 83323
kill -9 83851
sudo pacman -S Tixati
sudo pacman -S tixati
cd Downloads/
ls
ls
mv tixati-3.25-1.x86_64.manualinstall.tar.gz  /opt/
sudo mv tixati-3.25-1.x86_64.manualinstall.tar.gz /opt/
cd /opt/
ls
tar -xf tixati-3.25-1.x86_64.manualinstall.tar.gz 
sudo tar -xf tixati-3.25-1.x86_64.manualinstall.tar.gz 
ls
sudo rm tixati-3.25-1.x86_64.manualinstall.tar.gz 
ls
cd tixati-3.25-1.x86_64.manualinstall/
ls
./tixati 
./tixati 
sudo ./tixati
clear
ls
sudo pacman -S transmission-gtk
transmission-gtk 
fastfetch 
sudo chown m:/sys/class/backlight/intel_backlight/brightness 
 chown m:m /sys/class/backlight/intel_backlight/brightness 
sudo  chown m:m /sys/class/backlight/intel_backlight/brightness 
chmod 644 /sys/class/backlight/intel_backlight/brightness 
ls
echo 500 > /sys/class/.../brightness
echo 500 > /sys/class/backlight/intel_backlight/brightness
echo 4500 > /sys/class/backlight/intel_backlight/brightness
vim ~/.config/polybar/config.ini 
clear
chsh -s /usr/bin/zsh
