# ~/.bashrc
#
export QT_QPA_PLATFORMTHEME=qt5ct

# Import colorscheme from 'wal' asynchronously
# &   # Run the process in the background.
# ( ) # Hide shell job control messages.
# Not supported in the "fish" shell.
(cat ~/.cache/wal/sequences &)

wal-swww() {
    wal -n -i "$@"
    swww img $(< "${HOME}/.cache/wal/wal") --transition-step 144 --transition-fps 144
}

hydrus-tag() {
    cd /home/Yunoxa/drives/main/Other_Programs/hydrus-dd/
    ./tag_untagged.sh
    cd -
}

grab() {
    cd ~/.config/yt-dlp/scripts
    ./grab.sh $1 $2
    cd -
}

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '
export PATH=/home/Yunoxa/.local/bin:/usr/local/sbin:/usr/local/bin:/usr/bin:/var/lib/flatpak/exports/bin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl
export PATH=/home/Yunoxa/.local/bin:/usr/local/sbin:/usr/local/bin:/usr/bin:/var/lib/flatpak/exports/bin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl
export PATH=”/home/Yunoxa/.emacs.d/bin:$PATH”

alias python=python3
export HSA_OVERRIDE_GFX_VERSION=11.0.0
export PATH=$PATH:~/scripts
