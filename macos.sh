#!/usr/bin/env bash

# Set a blazingly fast keyboard repeat rate
defaults write NSGlobalDomain KeyRepeat -int 1
defaults write NSGlobalDomain InitialKeyRepeat -int 10

# Add fonts
cp ./init/fonts/* ~/Library/Fonts/

# Use fingerprint for sudo
sudo sh -c "$(printf '\nauth sufficient pam_tid.so') >> /etc/pam.d/sudo"

###############################################################################
# Terminal                                                                    #
###############################################################################

# Only use UTF-8 in Terminal.app
defaults write com.apple.terminal StringEncodings -array 4

# Use provided color scheme in Terminal.app
osascript <<EOD
tell application "Terminal"
	local allOpenedWindows
	local initialOpenedWindows
	local windowID
	set themeName to "Chester"
	(* Store the IDs of all the open terminal windows. *)
	set initialOpenedWindows to id of every window
	(* Open the custom theme so that it gets added to the list
	   of available terminal themes (note: this will open two
	   additional terminal windows). *)
	do shell script "open '$HOME/init/" & themeName & ".terminal'"
	(* Wait a little bit to ensure that the custom theme is added. *)
	delay 1
	(* Set the custom theme as the default terminal theme. *)
	set default settings to settings set themeName
	(* Get the IDs of all the currently opened terminal windows. *)
	set allOpenedWindows to id of every window
	repeat with windowID in allOpenedWindows
		(* Close the additional windows that were opened in order
		   to add the custom theme to the list of terminal themes. *)
		if initialOpenedWindows does not contain windowID then
			close (every window whose id is windowID)
		(* Change the theme for the initial opened terminal windows
		   to remove the need to close them in order for the custom
		   theme to be applied. *)
		else
			set current settings of tabs of (every window whose id is windowID) to settings set themeName
		end if
	end repeat
end tell
EOD

killall Terminal &> /dev/null

# Load iterm profiles from dotfiles
defaults write com.googlecode.iterm2.plist PrefsCustomFolder -string "~/.dotfiles-files/iterm2/"
defaults write com.googlecode.iterm2.plist LoadPrefsFromCustomFolder -bool true

echo "Done. Note that some of these changes require a logout/restart to take effect."
