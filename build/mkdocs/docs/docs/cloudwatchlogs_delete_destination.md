<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudwatchlogs_delete_destination</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the specified destination, and eventually disables all the subscription filters that publish to it

### Description

Deletes the specified destination, and eventually disables all the
subscription filters that publish to it. This operation does not delete
the physical resource encapsulated by the destination.

### Usage

    cloudwatchlogs_delete_destination(destinationName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudwatchlogs_delete_destination_:_destinationName">destinationName</code></td>
<td><p>[required] The name of the destination.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_destination(
      destinationName = "string"
    )
