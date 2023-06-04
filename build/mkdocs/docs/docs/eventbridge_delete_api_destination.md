<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>eventbridge_delete_api_destination</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the specified API destination

### Description

Deletes the specified API destination.

### Usage

    eventbridge_delete_api_destination(Name)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="eventbridge_delete_api_destination_:_Name">Name</code></td>
<td><p>[required] The name of the destination to delete.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_api_destination(
      Name = "string"
    )
