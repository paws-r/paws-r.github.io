<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ivs_delete_channel</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the specified channel and its associated stream keys

### Description

Deletes the specified channel and its associated stream keys.

If you try to delete a live channel, you will get an error (409
ConflictException). To delete a channel that is live, call
`stop_stream`, wait for the Amazon EventBridge "Stream End" event (to
verify that the stream's state is no longer Live), then call
DeleteChannel. (See [Using EventBridge with Amazon
IVS](https://docs.aws.amazon.com/ivs/latest/userguide/eventbridge.html).)

### Usage

    ivs_delete_channel(arn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ivs_delete_channel_:_arn">arn</code></td>
<td><p>[required] ARN of the channel to be deleted.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_channel(
      arn = "string"
    )
