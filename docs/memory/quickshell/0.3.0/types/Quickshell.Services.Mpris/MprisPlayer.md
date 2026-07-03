---
url: https://quickshell.org/docs/v0.3.0/types/Quickshell.Services.Mpris/MprisPlayer/
title: Quickshell.Services.Mpris - MprisPlayer
words: 1425
---
* * *

MprisPlayer: QtObject

uncreatable

import Quickshell.Services.Mpris

A media player exposed over MPRIS.

WARNING

Support for various functionality and general compliance to the MPRIS specification varies wildly by player. Always check the associated canXyz and xyzSupported properties if available.

NOTE

The TrackList and Playlist interfaces were not implemented as we could not find any media players using them to test against.

Properties [\[?\]](/docs/v0.3.0/guide/qml-language#properties)

- supportedMimeTypes :  list &lt;string&gt;
  
  readonly
  
  Mime types supported by openUri().
- trackArtist :  string
  
  readonly
  
  The current track’s artist, or an "" if none was provided.
  
  TIP
  
  Use player.trackArtist || "Unknown Artist" to provide a message when no artist is available.
- trackArtists :  string
  
  readonly
  
  > \[!ERROR] deprecated in favor of Go to trackArtist.
- canControl :  bool
  
  readonly
  
  No details provided
- canRaise :  bool
  
  readonly
  
  No details provided
- positionSupported :  bool
  
  readonly
  
  No details provided
- canPause :  bool
  
  readonly
  
  No details provided
- isPlaying :  bool
  
  True if Go to playbackState == MprisPlaybackState.Playing.
  
  Setting this property is equivalent to calling play() or pause(). You cannot set this property if Go to canTogglePlaying is false.
- shuffle :  bool
  
  If the play queue is currently being shuffled, or false if Go to shuffleSupported is false.
  
  May only be written if Go to canControl and Go to shuffleSupported are true.
- canQuit :  bool
  
  readonly
  
  No details provided
- desktopEntry :  string
  
  readonly
  
  The name of the desktop entry for the media player, or an empty string if not provided.
- canSeek :  bool
  
  readonly
  
  No details provided
- rate :  real
  
  The speed the song is playing at, as a multiplier.
  
  Only values between Go to minRate and Go to maxRate (inclusive) may be written to the property. Additionally, It is recommended that you only write common values such as 0.25, 0.5, 1.0, 2.0 to the property, as media players are free to ignore the value, and are more likely to accept common ones.
- loopSupported :  bool
  
  readonly
  
  No details provided
- canPlay :  bool
  
  readonly
  
  No details provided
- volumeSupported :  bool
  
  readonly
  
  No details provided
- canGoNext :  bool
  
  readonly
  
  No details provided
- length :  real
  
  readonly
  
  The length of the playing track, as seconds, with millisecond precision, or the value of Go to position if Go to lengthSupported is false.
- lengthSupported :  bool
  
  readonly
  
  No details provided
- playbackState :  MprisPlaybackState
  
  The playback state of the media player.
  
  - If Go to canPlay is false, you cannot assign the Playing state.
  - If Go to canPause is false, you cannot assign the Paused state.
  - If Go to canControl is false, you cannot assign the Stopped state. (or any of the others, though their repsective properties will also be false)
- dbusName :  string
  
  readonly
  
  The DBus service name of the player.
- shuffleSupported :  bool
  
  readonly
  
  No details provided
- loopState :  MprisLoopState
  
  The loop state of the media player, or None if Go to loopSupported is false.
  
  May only be written to if Go to canControl and Go to loopSupported are true.
- metadata :  unknown
  
  readonly
  
  Metadata of the current track.
  
  A map of common properties is available here. Do not count on any of them actually being present.
  
  Note that the Go to trackTitle, Go to trackAlbum, Go to trackAlbumArtist, Go to trackArtist and Go to trackArtUrl properties have extra logic to guard against bad players sending weird metadata, and should be used over grabbing the properties directly from the metadata.
- trackArtUrl :  string
  
  readonly
  
  The current track’s art url, or "" if none was provided.
- canTogglePlaying :  bool
  
  readonly
  
  No details provided
- fullscreen :  bool
  
  If the player is currently shown in fullscreen.
  
  May only be written to if Go to canSetFullscreen is true.
- identity :  string
  
  readonly
  
  The human readable name of the media player.
- trackAlbum :  string
  
  readonly
  
  The current track’s album, or "" if none was provided.
  
  TIP
  
  Use player.trackAlbum || "Unknown Album" to provide a message when no album is available.
- trackAlbumArtist :  string
  
  readonly
  
  The current track’s album artist, or "" if none was provided.
  
  TIP
  
  Use player.trackAlbumArtist || "Unknown Album" to provide a message when no album artist is available.
- canGoPrevious :  bool
  
  readonly
  
  No details provided
- position :  real
  
  The current position in the playing track, as seconds, with millisecond precision, or 0 if Go to positionSupported is false.
  
  May only be written to if Go to canSeek and Go to positionSupported are true.
  
  WARNING
  
  To avoid excessive property updates wasting CPU while position is not actively monitored, position usually will not update reactively, unless a nonlinear change in position occurs, however reading it will always return the current position.
  
  If you want to actively monitor the position, the simplest way it to emit the Go to positionChanged() signal manually for the duration you are monitoring it, Using a FrameAnimation if you need the value to update smoothly, such as on a slider, or a Timer if not, as shown below.
  
  ```
  FrameAnimation {
    // only emit the signal when the position is actually changing.
    running: player.playbackState == MprisPlaybackState.Playing
    // emit the positionChanged signal every frame.
    onTriggered: player.positionChanged()
  }
  ```
  
  ```
  Timer {
    // only emit the signal when the position is actually changing.
    running: player.playbackState == MprisPlaybackState.Playing
    // Make sure the position updates at least once per second.
    interval: 1000
    repeat: true
    // emit the positionChanged signal every second.
    onTriggered: player.positionChanged()
  }
  ```
- trackTitle :  string
  
  readonly
  
  The title of the current track, or "" if none was provided.
  
  TIP
  
  Use player.trackTitle || "Unknown Title" to provide a message when no title is available.
- uniqueId :  int
  
  readonly
  
  An opaque identifier for the current track unique within the current player.
  
  WARNING
  
  This is NOT mpris:trackid as that is sometimes missing or nonunique in some players.
- maxRate :  real
  
  readonly
  
  No details provided
- supportedUriSchemes :  list &lt;string&gt;
  
  readonly
  
  Uri schemes supported by openUri().
- volume :  real
  
  The volume of the playing track from 0.0 to 1.0, or 1.0 if Go to volumeSupported is false.
  
  May only be written to if Go to canControl and Go to volumeSupported are true.
- minRate :  real
  
  readonly
  
  No details provided
- canSetFullscreen :  bool
  
  readonly
  
  No details provided

Functions [\[?\]](/docs/v0.3.0/guide/qml-language#functions)

- next () :  void
  
  Play the next song.
  
  May only be called if Go to canGoNext is true.
- openUri (uri) :  void
  
  Property uri: string
  
  Open the given URI in the media player.
  
  Many players will silently ignore this, especially if the uri does not match Go to supportedUriSchemes and Go to supportedMimeTypes.
- pause () :  void
  
  Equivalent to setting Go to playbackState to Paused.
- play () :  void
  
  Equivalent to setting Go to playbackState to Playing.
- previous () :  void
  
  Play the previous song, or go back to the beginning of the current one.
  
  May only be called if Go to canGoPrevious is true.
- quit () :  void
  
  Quit the media player.
  
  May only be called if Go to canQuit is true.
- raise () :  void
  
  Bring the media player to the front of the window stack.
  
  May only be called if Go to canRaise is true.
- seek (offset) :  void
  
  Property offset: real
  
  Change position by an offset.
  
  Even if Go to positionSupported is false and you cannot set position, this function may work.
  
  May only be called if Go to canSeek is true.
- stop () :  void
  
  Equivalent to setting Go to playbackState to Stopped.
- togglePlaying () :  void
  
  Equivalent to calling play() if not playing or pause() if playing.
  
  May only be called if Go to canTogglePlaying is true, which is equivalent to Go to canPlay or Go to canPause depending on the current playback state.

Signals [\[?\]](/docs/v0.3.0/guide/qml-language#signals)

- postTrackChanged ()  [](/docs/configuration/qml-overview#-signals)
  
  Sent after track info related properties have been updated, following Go to trackChanged.
  
  WARNING
  
  It is not safe to assume all track information is up to date after this signal is emitted. A large number of players will update track information, particularly Go to trackArtUrl, slightly after this signal.
- trackChanged ()  [](/docs/configuration/qml-overview#-signals)
  
  The track has changed.
  
  All track information properties that were sent by the player will be updated immediately following this signal. Go to postTrackChanged will be sent after they update.
  
  Track information properties: Go to uniqueId, Go to metadata, Go to trackTitle, Go to trackArtist, Go to trackAlbum, Go to trackAlbumArtist, Go to trackArtUrl
  
  WARNING
  
  Some particularly poorly behaved players will update metadata before indicating the track has changed.
