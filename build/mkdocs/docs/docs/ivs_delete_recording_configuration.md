<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ivs_delete_recording_configuration</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the recording configuration for the specified ARN

### Description

Deletes the recording configuration for the specified ARN.

If you try to delete a recording configuration that is associated with a
channel, you will get an error (409 ConflictException). To avoid this,
for all channels that reference the recording configuration, first use
`update_channel` to set the `recordingConfigurationArn` field to an
empty string, then use DeleteRecordingConfiguration.

### Usage

    ivs_delete_recording_configuration(arn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ivs_delete_recording_configuration_:_arn">arn</code></td>
<td><p>[required] ARN of the recording configuration to be
deleted.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_recording_configuration(
      arn = "string"
    )
