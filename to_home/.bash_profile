#
# ~/.bash_profile
#
export XDG_CURRENT_DESKTOP=Hyprland
export XDG_SESSION_TYPE=wayland
export XDG_SESSION_DESKTOP=Hyprland
export SDL_VIDEODRIVER=wayland
export ECORE_EVAS_ENGINE=wayland_egl
export QT_QPA_PLATFORM="wayland;xcb"
export QT_QPA_PLATFORMTHEME=gtk2
export QT_WAYLAND_DISABLE_WINDOWDECORATION=1
export MOZ_ENABLE_WAYLAND=1
export WLR_NO_HARDWARE_CURSORS=1
export _JAVA_AWT_WM_NONREPARENTING=1
export GDK_BACKEND="wayland,x11"
export EDITOR=nvim
export VISUAL=nvim
export PATH=$PATH:~/.cargo/bin/:~/.local/bin/

dbus-launch --exit-with-session Hyprland

[[ -f ~/.bashrc ]] && . ~/.bashrc
