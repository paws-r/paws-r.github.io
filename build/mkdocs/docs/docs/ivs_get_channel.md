<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ivs_get_channel</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets the channel configuration for the specified channel ARN

### Description

Gets the channel configuration for the specified channel ARN. See also
`batch_get_channel`.

### Usage

    ivs_get_channel(arn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ivs_get_channel_:_arn">arn</code></td>
<td><p>[required] ARN of the channel for which the configuration is to
be retrieved.</p></td>
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
      )
    )

### Request syntax

    svc$get_channel(
      arn = "string"
    )
