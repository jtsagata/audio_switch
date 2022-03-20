# audio-switch:
## Install PipeWire and easy switch between PipeWire and PulseAudio 

With this tool you can install PipeWire on Debian based systems. It also provides an easy way to switch between PulseAudio and Pipewire and debug the installation.

## Switching to PipeWire

<pre><font color="#90A959"><b> </b></font><font color="#6A9FB5"> </font> <font color="#90A959"><b>❯</b></font> audio_switch pipewire
-- Disable PulseAudio
    <font color="#90A959">[OK]</font> Service pulseaudio.socket is dead
    <font color="#90A959">[OK]</font> Service pulseaudio.service is dead
-- Enable Pipewire
    <font color="#90A959">[OK]</font> Service pipewire.socket is running
    <font color="#90A959">[OK]</font> Service pipewire.service is running
    <font color="#90A959">[OK]</font> Service pipewire-pulse.socket is running
    <font color="#90A959">[OK]</font> Service pipewire-pulse.service is running
    <font color="#90A959">[OK]</font> Service wireplumber.service is running
-- Testing <font color="#90A959">Server Name: PulseAudio (on PipeWire 0.3.48)</font>
Did you hear the sound?
-- Sink and volume info
-- Default Sink: <font color="#90A959">analog-surround-51</font>
-- Volumes
<font color="#90A959">      front-left</font>: 56% 
<font color="#90A959">     front-right</font>: 56% 
<font color="#90A959">       rear-left</font>: 56% 
<font color="#90A959">      rear-right</font>: 56% 
<font color="#90A959">    front-center</font>: 56% 
<font color="#90A959">             lfe</font>: 56% 
</pre>

## Switching to PulseAudio
<pre><font color="#90A959"><b> </b></font><font color="#6A9FB5"> </font> <font color="#90A959"><b>❯</b></font> audio_switch pulseaudio
-- Disable Pipewire
    <font color="#90A959">[OK]</font> Service pipewire-pulse.socket is dead
    <font color="#90A959">[OK]</font> Service pipewire.socket is dead
    <font color="#90A959">[OK]</font> Service wireplumber.service is dead
    <font color="#90A959">[OK]</font> Service pipewire-pulse.service is dead
    <font color="#90A959">[OK]</font> Service pipewire.service is dead
-- Enable PulseAudio
    <font color="#90A959">[OK]</font> Service pulseaudio.socket is listening
    <font color="#90A959">[OK]</font> Service pulseaudio.service is running
-- Testing <font color="#90A959">Server Name: pulseaudio</font>
Did you hear the sound?
-- Sink and volume info
-- Default Sink: <font color="#90A959">analog-surround-51</font>
-- Volumes
<font color="#90A959">      front-left</font>: 56% 
<font color="#90A959">     front-right</font>: 56% 
<font color="#90A959">       rear-left</font>: 56% 
<font color="#90A959">      rear-right</font>: 56% 
<font color="#90A959">    front-center</font>: 56% 
<font color="#90A959">             lfe</font>: 56% 
</pre>

## Check service status
<pre><font color="#8AE234"><b>asfodelus@menta</b></font>:<font color="#729FCF"><b>~</b></font>$ audio_switch services --all
<font color="#4E9A06">●</font> Sockets:
<u style="text-decoration-style:single">LISTEN                      UNITS                 ACTIVATES             </u>
/run/user/1000/pipewire-0   pipewire.socket       pipewire.service      
/run/user/1000/pulse/native pipewire-pulse.socket pipewire-pulse.service
/run/user/1000/pulse/native pulseaudio.socket     pulseaudio.service    

<font color="#4E9A06">●</font> Services:
<u style="text-decoration-style:single">  UNIT                           LOAD   ACTIVE   SUB     DESCRIPTION                       </u>
  pipewire-media-session.service loaded inactive dead    PipeWire Media Session Manager    
  pipewire-pulse.service         loaded active   running PipeWire PulseAudio               
  pipewire.service               loaded active   running PipeWire Multimedia Service       
<font color="#D7D75F"><b>●</b></font> pulseaudio.service             <font color="#EF2929"><b>masked</b></font> inactive dead    pulseaudio.service                
  wireplumber.service            loaded active   running Multimedia Service Session Manager
</pre>

## Quick check if everything working and view the sound daemon used
<pre><font color="#8AE234"><b>asfodelus@menta</b></font>:<font color="#729FCF"><b>~</b></font>$ audio_switch check
Server Name: PulseAudio (on PipeWire 0.3.48)
Playing WAVE &apos;/usr/share/sounds/linuxmint-gdm.wav&apos; : Signed 16 bit Little Endian, Rate 22050 Hz, Mono</pre>

## Show default sink and volume info
<pre><font color="#90A959"><b> </b></font><font color="#6A9FB5"> </font> <font color="#90A959"><b>❯</b></font> audio_switch vinfo
-- Default Sink: <font color="#90A959">analog-surround-51</font>
-- Volumes
<font color="#90A959">      front-left</font>: 56% 
<font color="#90A959">     front-right</font>: 56% 
<font color="#90A959">       rear-left</font>: 56% 
<font color="#90A959">      rear-right</font>: 56% 
<font color="#90A959">    front-center</font>: 56% 
<font color="#90A959">             lfe</font>: 56% </pre>

## Other options
Type `audio_switch` without parameters for other options
<pre>audio_switch: Install pipewire and sound switcher source
   repos:       Enable PPAs
   install:     Install Pipewire
   pipewire:    Use Pipewire
   pulseaudio:  Use PuleAudio
   restart:     Restart audio service
   check:       Check sound
   music:       Play some music
   vinfo:       Show sink and volume info
   services:    Show services status
</pre>

## Installation
Run the command 
`wget -O - https://raw.githubusercontent.com/jtsagata/audio_switch/master/install.sh | sudo bash`
and follow instructions. It won't change anything on your system if you don't. 

## Troubleshooting and more Info

* https://pipewire-debian.github.io/pipewire-debian/
* https://linux-user.gr/t/eykolh-enallagh-metaxy-pulseaudio-kai-pipewire/3959 (Greek)
* https://linux-user.gr/t/antikatastash-pulseaudio-me-pipewire/3619 (Greek)
