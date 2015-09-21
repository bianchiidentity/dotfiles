#!/bin/bash

trap 'echo Error: $0:$LINENO stopped; exit 1' ERR INT
set -eu

. $DOTPATH/etc/lib/vital.sh

is_osx || die "osx only"

set_finder_preferences()
{
    # Clean the desktop
    defaults write com.apple.finder CreateDesktop -bool false
}

# Keyboard {{{1
set_keyboard_preferences()
{
    # Disable press-and-hold for keys in favor of key repeat
    defaults write NSGlobalDomain ApplePressAndHoldEnabled -bool false

    # Delay Until Repeat
    defaults write NSGlobalDomain "InitialKeyRepeat_Level_Saved" -int 15

    # Set the key repeat rate to fast
    defaults write NSGlobalDomain KeyRepeat -int 2
}

# UI/UX {{{1
set_ui_and_ux_preferences()
{
    # Avoid creating `.DS_Store` files on network volumes
    defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true

    # Hide the battery percentage from the menu bar
    defaults write com.apple.menuextra.battery ShowPercent -string "NO"

    # Save screenshots to the ~/Desktop
    defaults write com.apple.screencapture location -string "$HOME/Desktop"

    defaults write .GlobalPreferences com.apple.trackpad.scaling 4
}

# main {{{1}}}

# Ask for the administrator password upfront
sudo -v

# Keep-alive: update existing `sudo` time stamp until `.osx` has finished
#while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &
while true
do
    sudo -n true
    sleep 60;
    kill -0 "$$" || exit
done 2>/dev/null &

set_finder_preferences
set_keyboard_preferences
set_ui_and_ux_preferences

# vim:fdm=marker expandtab fdc=3 ts=4 sw=4 sts=4:
