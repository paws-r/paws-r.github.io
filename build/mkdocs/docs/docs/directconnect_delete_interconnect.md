<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>directconnect_delete_interconnect</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the specified interconnect

### Description

Deletes the specified interconnect.

Intended for use by Direct Connect Partners only.

### Usage

    directconnect_delete_interconnect(interconnectId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="directconnect_delete_interconnect_:_interconnectId">interconnectId</code></td>
<td><p>[required] The ID of the interconnect.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      interconnectState = "requested"|"pending"|"available"|"down"|"deleting"|"deleted"|"unknown"
    )

### Request syntax

    svc$delete_interconnect(
      interconnectId = "string"
    )
