<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ivs_create_channel</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a new channel and an associated stream key to start streaming

### Description

Creates a new channel and an associated stream key to start streaming.

### Usage

    ivs_create_channel(authorized, insecureIngest, latencyMode, name,
      recordingConfigurationArn, tags, type)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ivs_create_channel_:_authorized">authorized</code></td>
<td><p>Whether the channel is private (enabled for playback
authorization). Default: <code>false</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="ivs_create_channel_:_insecureIngest">insecureIngest</code></td>
<td><p>Whether the channel allows insecure RTMP ingest. Default:
<code>false</code>.</p></td>
</tr>
<tr class="odd">
<td><code id="ivs_create_channel_:_latencyMode">latencyMode</code></td>
<td><p>Channel latency mode. Use <code>NORMAL</code> to broadcast and
deliver live video up to Full HD. Use <code>LOW</code> for
near-real-time interaction with viewers. (Note: In the Amazon IVS
console, <code>LOW</code> and <code>NORMAL</code> correspond to
Ultra-low and Standard, respectively.) Default:
<code>LOW</code>.</p></td>
</tr>
<tr class="even">
<td><code id="ivs_create_channel_:_name">name</code></td>
<td><p>Channel name.</p></td>
</tr>
<tr class="odd">
<td><code
id="ivs_create_channel_:_recordingConfigurationArn">recordingConfigurationArn</code></td>
<td><p>Recording-configuration ARN. Default: "" (empty string, recording
is disabled).</p></td>
</tr>
<tr class="even">
<td><code id="ivs_create_channel_:_tags">tags</code></td>
<td><p>Array of 1-50 maps, each of the form
<code>string:string (key:value)</code>. See <a
href="https://docs.aws.amazon.com/tag-editor/latest/userguide/tagging.html">Tagging
Amazon Web Services Resources</a> for more information, including
restrictions that apply to tags and "Tag naming limits and
requirements"; Amazon IVS has no service-specific constraints beyond
what is documented there.</p></td>
</tr>
<tr class="odd">
<td><code id="ivs_create_channel_:_type">type</code></td>
<td><p>Channel type, which determines the allowable resolution and
bitrate. <em>If you exceed the allowable resolution or bitrate, the
stream probably will disconnect immediately.</em> Default:
<code>STANDARD</code>. Valid values:</p>
<ul>
<li><p><code>STANDARD</code>: Video is transcoded: multiple qualities
are generated from the original input, to automatically give viewers the
best experience for their devices and network conditions. Transcoding
allows higher playback quality across a range of download speeds.
Resolution can be up to 1080p and bitrate can be up to 8.5 Mbps. Audio
is transcoded only for renditions 360p and below; above that, audio is
passed through. This is the default.</p></li>
<li><p><code>BASIC</code>: Video is transmuxed: Amazon IVS delivers the
original input to viewers. The viewer’s video-quality choice is limited
to the original input. Resolution can be up to 1080p and bitrate can be
up to 1.5 Mbps for 480p and up to 3.5 Mbps for resolutions between 480p
and 1080p.</p></li>
</ul></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      channel = list(
        arn = "string",
        authorized = TRUE|FALSE,
        ingestEndpoint = "string",
        insecureIngest = TRUE|FALSE,
        latencyMode = "NORMAL"|"LOW",
        name = "string",
        playbackUrl = "string",
        recordingConfigurationArn = "string",
        tags = list(
          "string"
        ),
        type = "BASIC"|"STANDARD"
      ),
      streamKey = list(
        arn = "string",
        channelArn = "string",
        tags = list(
          "string"
        ),
        value = "string"
      )
    )

### Request syntax

    svc$create_channel(
      authorized = TRUE|FALSE,
      insecureIngest = TRUE|FALSE,
      latencyMode = "NORMAL"|"LOW",
      name = "string",
      recordingConfigurationArn = "string",
      tags = list(
        "string"
      ),
      type = "BASIC"|"STANDARD"
    )
