<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>kafka_delete_configuration</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes an MSK Configuration

### Description

Deletes an MSK Configuration.

### Usage

    kafka_delete_configuration(Arn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="kafka_delete_configuration_:_Arn">Arn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) that uniquely
identifies an MSK configuration.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Arn = "string",
      State = "ACTIVE"|"DELETING"|"DELETE_FAILED"
    )

### Request syntax

    svc$delete_configuration(
      Arn = "string"
    )
