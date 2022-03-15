# audio-switch: Install PipeWire and easy switch between PipeWire and PluseAudio 

With this tool you can install PipeWire on Debian based systems. It also provides an easy way to switch between PulseAudio and Pipewire and debug the installation.

## Switching to PipeWire

<pre><font color="#8AE234"><b>asfodelus@menta</b></font>:<font <pre>-- Disable PulseAudio
    <font color="#4E9A06">[OK]</font> Service pulseaudio.socket is dead
    <font color="#4E9A06">[OK]</font> Service pulseaudio.service is dead
-- Enable pipewire
    <font color="#4E9A06">[OK]</font> Service pipewire.socket is listening
    <font color="#4E9A06">[OK]</font> Service pipewire.service is running
    <font color="#4E9A06">[OK]</font> Service pipewire-pulse.socket is listening
    <font color="#4E9A06">[OK]</font> Service pipewire-pulse.service is running
    <font color="#4E9A06">[OK]</font> Service wireplumber.service is running
Server Name: PulseAudio (on PipeWire 0.3.48)
Playing WAVE &apos;/usr/share/sounds/linuxmint-gdm.wav&apos; : Signed 16 bit Little Endian, Rate 22050 Hz, Mono
</pre>

## Switching to PulseAudio
<pre><font color="#8AE234"><b>asfodelus@menta</b></font>:<font color="#729FCF"><b>~</b></font>$ audio_switch pulseaudio
-- Disable pipewire
    <font color="#4E9A06">[OK]</font> Service wireplumber.service is dead
    <font color="#4E9A06">[OK]</font> Service pipewire-pulse.socket is dead
    <font color="#4E9A06">[OK]</font> Service pipewire-pulse.service is dead
    <font color="#4E9A06">[OK]</font> Service pipewire.service is dead
    <font color="#4E9A06">[OK]</font> Service pipewire.socket is dead
-- Enable PulseAudio
    <font color="#4E9A06">[OK]</font> Service pulseaudio.socket is listening
    <font color="#4E9A06">[OK]</font> Service pulseaudio.service is running
Server Name: pulseaudio
Playing WAVE &apos;/usr/share/sounds/linuxmint-gdm.wav&apos; : Signed 16 bit Little Endian, Rate 22050 Hz, Mon</pre>

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

Type `audio_switch` without parameters for other options

## Installation
Run the command 
`wget -O - https://raw.githubusercontent.com/jtsagata/audio_switch/master/install.sh | sudo bash`
and follow instructions. It won't change anything on your system if you don't. 

## Troubleshooting and more Info

* https://pipewire-debian.github.io/pipewire-debian/
* https://linux-user.gr/t/eykolh-enallagh-metaxy-pulseaudio-kai-pipewire/3959 (Greek)
* https://linux-user.gr/t/antikatastash-pulseaudio-me-pipewire/3619 (Greek)
