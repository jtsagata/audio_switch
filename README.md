# audio-switch: Install PipeWire and easy switch between PipeWire and PluseAudio 

With this tool you can install PipeWire on Debian based systems. It also provides an easy way to switch between PulseAudio and Pipewire and debug the installation.

## Switching to PipeWire

<pre><font color="#8AE234"><b>asfodelus@menta</b></font>:<font color="#729FCF"><b>~</b></font>$ audio_switch pipewire
-- Enable pipewire
-- Disable PulseAudio
    <font color="#4E9A06">[OK]</font> Service pulseaudio.socket is dead
    <font color="#4E9A06">[OK]</font> Service pulseaudio.service is dead
    <font color="#4E9A06">[OK]</font> Service pipewire.socket is listening
    <font color="#4E9A06">[OK]</font> Service pipewire.service is running
    <font color="#4E9A06">[OK]</font> Service pipewire-pulse.socket is listening
    <font color="#4E9A06">[OK]</font> Service pipewire-pulse.service is running
    <font color="#4E9A06">[OK]</font> Service wireplumber.service is running
Server Name: PulseAudio (on PipeWire 0.3.48)
Playing WAVE &apos;/usr/share/sounds/linuxmint-gdm.wav&apos; : Signed 16 bit Little Endian, Rate 22050 Hz, Mono</pre>
