<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ivs_delete_playback_key_pair</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a specified authorization key pair

### Description

Deletes a specified authorization key pair. This invalidates future
viewer tokens generated using the key pair’s `privateKey`. For more
information, see [Setting Up Private
Channels](https://docs.aws.amazon.com/ivs/latest/userguide/private-channels.html)
in the *Amazon IVS User Guide*.

### Usage

    ivs_delete_playback_key_pair(arn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ivs_delete_playback_key_pair_:_arn">arn</code></td>
<td><p>[required] ARN of the key pair to be deleted.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_playback_key_pair(
      arn = "string"
    )
