---
url: https://docs.voidlinux.org/config/media/index.html
title: Multimedia - The Void Linux Handbook
words: 73
---
Multimedia

Audio setup

To setup audio on your Void Linux system you have to decide if you want to use PulseAudio, PipeWire or just ALSA. Sndio is also available, but is neither supported nor recommended.

Some applications require PulseAudio, especially closed source programs, but PipeWire provides a drop-in replacement for PulseAudio.

If elogind is not enabled, it is necessary to be in the audio group in order to have access to audio devices.
