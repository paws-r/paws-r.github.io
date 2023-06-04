<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudtrail_delete_channel</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a channel

### Description

Deletes a channel.

### Usage

    cloudtrail_delete_channel(Channel)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="cloudtrail_delete_channel_:_Channel">Channel</code></td>
<td><p>[required] The ARN or the <code>UUID</code> value of the channel
that you want to delete.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_channel(
      Channel = "string"
    )
