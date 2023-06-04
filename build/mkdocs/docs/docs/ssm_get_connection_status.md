<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ssm_get_connection_status</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves the Session Manager connection status for a managed node to determine whether it is running and ready to receive Session Manager connections

### Description

Retrieves the Session Manager connection status for a managed node to
determine whether it is running and ready to receive Session Manager
connections.

### Usage

    ssm_get_connection_status(Target)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ssm_get_connection_status_:_Target">Target</code></td>
<td><p>[required] The managed node ID.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Target = "string",
      Status = "Connected"|"NotConnected"
    )

### Request syntax

    svc$get_connection_status(
      Target = "string"
    )
