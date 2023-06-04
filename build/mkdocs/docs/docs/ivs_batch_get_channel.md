<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ivs_batch_get_channel</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Performs GetChannel on multiple ARNs simultaneously

### Description

Performs `get_channel` on multiple ARNs simultaneously.

### Usage

    ivs_batch_get_channel(arns)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ivs_batch_get_channel_:_arns">arns</code></td>
<td><p>[required] Array of ARNs, one per channel.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      channels = list(
        list(
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
      ),
      errors = list(
        list(
          arn = "string",
          code = "string",
          message = "string"
        )
      )
    )

### Request syntax

    svc$batch_get_channel(
      arns = list(
        "string"
      )
    )
