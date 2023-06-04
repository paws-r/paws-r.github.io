<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>directconnect_confirm_connection</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Confirms the creation of the specified hosted connection on an interconnect

### Description

Confirms the creation of the specified hosted connection on an
interconnect.

Upon creation, the hosted connection is initially in the `Ordering`
state, and remains in this state until the owner confirms creation of
the hosted connection.

### Usage

    directconnect_confirm_connection(connectionId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="directconnect_confirm_connection_:_connectionId">connectionId</code></td>
<td><p>[required] The ID of the hosted connection.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      connectionState = "ordering"|"requested"|"pending"|"available"|"down"|"deleting"|"deleted"|"rejected"|"unknown"
    )

### Request syntax

    svc$confirm_connection(
      connectionId = "string"
    )
