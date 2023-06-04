<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ivs_create_stream_key</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a stream key, used to initiate a stream, for the specified channel ARN

### Description

Creates a stream key, used to initiate a stream, for the specified
channel ARN.

Note that `create_channel` creates a stream key. If you subsequently use
CreateStreamKey on the same channel, it will fail because a stream key
already exists and there is a limit of 1 stream key per channel. To
reset the stream key on a channel, use `delete_stream_key` and then
CreateStreamKey.

### Usage

    ivs_create_stream_key(channelArn, tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ivs_create_stream_key_:_channelArn">channelArn</code></td>
<td><p>[required] ARN of the channel for which to create the stream
key.</p></td>
</tr>
<tr class="even">
<td><code id="ivs_create_stream_key_:_tags">tags</code></td>
<td><p>Array of 1-50 maps, each of the form
<code>string:string (key:value)</code>. See <a
href="https://docs.aws.amazon.com/tag-editor/latest/userguide/tagging.html">Tagging
Amazon Web Services Resources</a> for more information, including
restrictions that apply to tags and "Tag naming limits and
requirements"; Amazon IVS has no service-specific constraints beyond
what is documented there.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
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

    svc$create_stream_key(
      channelArn = "string",
      tags = list(
        "string"
      )
    )
