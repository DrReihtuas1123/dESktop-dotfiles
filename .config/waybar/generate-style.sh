#!/bin/sh

# ============================================================== #
#                                                                #
#      Waybar Styling                                            #
#      by E. Sauthier                                            #
#      inspired by the original config files                     #
#                                                                #
# ============================================================== #

###########################################
###            Variables                ###
###########################################

TEXTFG="#ffffff"
TRANSPARENT="rgba(0,0,0,0)"
BG=$TRANSPARENT
MODULESBG="#10105f"
BUTTONHOVER="rgba(255,255,255,0.5)"
BUTTOMACTIVE="rgba(255,255,255,0.8)"
FOCUSED="#2b2dab"
ACTIVE="#4b4deb"
URGENT="#f53c3c"
WORKSPACEBUTTON="#ffffff"
TEXTACTIVEBUTTON="#2a5c45"

###########################################
###        The Configuration            ###
###########################################

cat >./style.css <<EOF


/* ============================================================= ##
*                                                                ##
*      Waybar Styling                                            ##
*      by E. Sauthier                                            ##
*      inspired by the original config files                     ##
*      generated automatically by generate-style.sh
*                                                                ##
*                                                                ##
* =============================================================== */ 


* {
    font-family: FontAwesome, Roboto, Helvetica, Arial, sans-serif;
    font-size: 14px;
    border: none;
    border-radius: 10px;
}

window#waybar {
    background-color: $BG;
    border-bottom: 3px solid $TRANSPARENT;
    color: $TEXTFG;
    transition-property: background-color;
    transition-duration: .5s;
}

.modules-right {
	border-radius: 10px;
  background-color: $MODULESBG;
}

.modules-left {
  background-color: $MODULESBG;
}

.modules-center {
  background-color: $MODULESBG;
}

button {
    /* Use box-shadow instead of border so the text isn't offset */
    box-shadow: inset 0 -3px transparent;
    /* Avoid rounded borders under each button name */
    border: none;
    border-radius: 10px;
}

button:hover {
	background: $BUTTONHOVER;
}

#workspaces button {
    padding: 0 5px;
    background-color: $BG;
    color: $WORKSPACEBUTTON;
}

#workspaces button:hover {
    background: rgba(255,255,255,0.5);
}

#workspaces button.focused {
    background: rgba(255,255,255,0.8);
    color: $FOCUSED;
}

#workspaces button.active {
    background: rgba(255,255,255,0.8);
    color: $ACTIVE;
}

#workspaces button.urgent {
    color: $URGENT;
}

#mode {
    background-color: $BG;
    box-shadow: inset 0 -3px $TEXTFG;
}

#clock,
#battery,
#cpu,
#memory,
#disk,
#temperature,
#backlight,
#network,
#pulseaudio,
#wireplumber,
#custom-media,
#tray,
#mode,
#idle_inhibitor,
#scratchpad,
#power-profiles-daemon,

#window,
#workspaces {
    margin: 0 4px;
}


/* If workspaces is the leftmost module, omit left margin */
.modules-left > widget:first-child > #workspaces {
    margin-left: 0;
    
}

/* If workspaces is the rightmost module, omit right margin */
.modules-right > widget:last-child > #workspaces {
    margin-right: 0;
}

#clock {
    background-color: $BG;
}

#battery {
    background-color: $BG;
    color: $TEXTFG;
    padding: 10px;
}

#battery.charging, #battery.plugged {
    color: $TEXTFG;
    background-color: $BG;
}

@keyframes blink {
    to {
        background-color: $TEXTFG;
        color: $BG;
    }
}


/* Using steps() instead of linear as a timing function to limit cpu usage */
#battery.critical:not(.charging) {
    background-color: $URGENT;
    color: $TEXTFG;
    animation-name: blink;
    animation-duration: 0.5s;
    animation-timing-function: steps(12);
    animation-iteration-count: infinite;
    animation-direction: alternate;
}

#power-profiles-daemon {
    padding-right: 15px;
}

#power-profiles-daemon.performance {
    background-color: $BG;
    color: $TEXTFG;
}

#power-profiles-daemon.balanced {
    background-color: $BG;
    color: $TEXTFG;
}

#power-profiles-daemon.power-saver {
    background-color: $ACTIVE;
    color: $BG;
}

label:focus {
    background-color: $BG;
}

#cpu {
    background-color: $BG;
    color: $TEXTFG;
}

#memory {
    background-color: $BG;
}

#disk {
    background-color: $BG;
}


#backlight {
    background-color: $BG;
}

#network {
    background-color: $BG;
    color : $TEXTFG;
}

#network.disconnected {
    color: $URGENT;
}

#pulseaudio {
    background-color: $BG;
    color: $TEXTFG;
}

#pulseaudio.muted {
    background-color: $BG;
    color: $URGENT;
}

#wireplumber {
    background-color: $TEXTFG;
    color: $BG;
}

#wireplumber.muted {
    background-color: $URGENT;
}


#temperature {
    background-color: $BG;
    color : $TEXTFG;
}

#temperature.critical {
    background-color: $BG;
    color : $URGENT;
}

#idle_inhibitor {
    background-color: $BG;
    color: $TEXTFG;
    padding: 0 5px;
}

#idle_inhibitor.activated {
    background: $BUTTOMACTIVE;
    color: $TEXTACTIVEBUTTON;
}

#custom-power {
    background-color: $BG;
}


EOF
