<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ivs_batch_get_stream_key</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Performs GetStreamKey on multiple ARNs simultaneously

### Description

Performs `get_stream_key` on multiple ARNs simultaneously.

### Usage

    ivs_batch_get_stream_key(arns)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ivs_batch_get_stream_key_:_arns">arns</code></td>
<td><p>[required] Array of ARNs, one per stream key.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      errors = list(
        list(
          arn = "string",
          code = "string",
          message = "string"
        )
      ),
      streamKeys = list(
        list(
          arn = "string",
          channelArn = "string",
          tags = list(
            "string"
          ),
          value = "string"
        )
      )
    )

### Request syntax

    svc$batch_get_stream_key(
      arns = list(
        "string"
      )
    )
