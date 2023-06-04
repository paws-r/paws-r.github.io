<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ivs_get_playback_key_pair</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets a specified playback authorization key pair and returns the arn and fingerprint

### Description

Gets a specified playback authorization key pair and returns the `arn`
and `fingerprint`. The `privateKey` held by the caller can be used to
generate viewer authorization tokens, to grant viewers access to private
channels. For more information, see [Setting Up Private
Channels](https://docs.aws.amazon.com/ivs/latest/userguide/private-channels.html)
in the *Amazon IVS User Guide*.

### Usage

    ivs_get_playback_key_pair(arn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ivs_get_playback_key_pair_:_arn">arn</code></td>
<td><p>[required] ARN of the key pair to be returned.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      keyPair = list(
        arn = "string",
        fingerprint = "string",
        name = "string",
        tags = list(
          "string"
        )
      )
    )

### Request syntax

    svc$get_playback_key_pair(
      arn = "string"
    )
