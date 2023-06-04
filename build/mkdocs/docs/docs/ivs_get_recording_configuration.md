<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ivs_get_recording_configuration</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets the recording configuration for the specified ARN

### Description

Gets the recording configuration for the specified ARN.

### Usage

    ivs_get_recording_configuration(arn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ivs_get_recording_configuration_:_arn">arn</code></td>
<td><p>[required] ARN of the recording configuration to be
retrieved.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      recordingConfiguration = list(
        arn = "string",
        destinationConfiguration = list(
          s3 = list(
            bucketName = "string"
          )
        ),
        name = "string",
        recordingReconnectWindowSeconds = 123,
        state = "CREATING"|"CREATE_FAILED"|"ACTIVE",
        tags = list(
          "string"
        ),
        thumbnailConfiguration = list(
          recordingMode = "DISABLED"|"INTERVAL",
          targetIntervalSeconds = 123
        )
      )
    )

### Request syntax

    svc$get_recording_configuration(
      arn = "string"
    )
