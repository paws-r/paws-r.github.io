<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>prometheusservice_describe_alert_manager_definition</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes an alert manager definition

### Description

Describes an alert manager definition.

### Usage

    prometheusservice_describe_alert_manager_definition(workspaceId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="prometheusservice_describe_alert_manager_definition_:_workspaceId">workspaceId</code></td>
<td><p>[required] The ID of the workspace to describe.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      alertManagerDefinition = list(
        createdAt = as.POSIXct(
          "2015-01-01"
        ),
        data = raw,
        modifiedAt = as.POSIXct(
          "2015-01-01"
        ),
        status = list(
          statusCode = "CREATING"|"ACTIVE"|"UPDATING"|"DELETING"|"CREATION_FAILED"|"UPDATE_FAILED",
          statusReason = "string"
        )
      )
    )

### Request syntax

    svc$describe_alert_manager_definition(
      workspaceId = "string"
    )
