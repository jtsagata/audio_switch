#!/bin/bash

wget https://raw.githubusercontent.com/jtsagata/audio_switch/master/audio_switch -O ${HOME}/.local/bin/audio_switch
chmod +x ${HOME}/.local/bin/audio_switch

echo "Type: ~/.local/bin/audio_switch repo to install the PPAs"
echo "Type: ~/.local/bin/audio_switch install  to install the pipewire daemon"
echo "Type: ~/.local/bin/audio_switch help to see other options"