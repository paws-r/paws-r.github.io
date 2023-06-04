<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>prometheusservice_put_alert_manager_definition</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Update an alert manager definition

### Description

Update an alert manager definition.

### Usage

    prometheusservice_put_alert_manager_definition(clientToken, data,
      workspaceId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="prometheusservice_put_alert_manager_definition_:_clientToken">clientToken</code></td>
<td><p>Optional, unique, case-sensitive, user-provided identifier to
ensure the idempotency of the request.</p></td>
</tr>
<tr class="even">
<td><code
id="prometheusservice_put_alert_manager_definition_:_data">data</code></td>
<td><p>[required] The alert manager definition data.</p></td>
</tr>
<tr class="odd">
<td><code
id="prometheusservice_put_alert_manager_definition_:_workspaceId">workspaceId</code></td>
<td><p>[required] The ID of the workspace in which to update the alert
manager definition.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      status = list(
        statusCode = "CREATING"|"ACTIVE"|"UPDATING"|"DELETING"|"CREATION_FAILED"|"UPDATE_FAILED",
        statusReason = "string"
      )
    )

### Request syntax

    svc$put_alert_manager_definition(
      clientToken = "string",
      data = raw,
      workspaceId = "string"
    )
