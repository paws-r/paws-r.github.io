<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>dynamodb_describe_time_to_live</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gives a description of the Time to Live (TTL) status on the specified table

### Description

Gives a description of the Time to Live (TTL) status on the specified
table.

### Usage

    dynamodb_describe_time_to_live(TableName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="dynamodb_describe_time_to_live_:_TableName">TableName</code></td>
<td><p>[required] The name of the table to be described.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      TimeToLiveDescription = list(
        TimeToLiveStatus = "ENABLING"|"DISABLING"|"ENABLED"|"DISABLED",
        AttributeName = "string"
      )
    )

### Request syntax

    svc$describe_time_to_live(
      TableName = "string"
    )
