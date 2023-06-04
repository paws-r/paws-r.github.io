<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>prometheusservice_describe_logging_configuration</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes logging configuration

### Description

Describes logging configuration.

### Usage

    prometheusservice_describe_logging_configuration(workspaceId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="prometheusservice_describe_logging_configuration_:_workspaceId">workspaceId</code></td>
<td><p>[required] The ID of the workspace to vend logs to.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      loggingConfiguration = list(
        createdAt = as.POSIXct(
          "2015-01-01"
        ),
        logGroupArn = "string",
        modifiedAt = as.POSIXct(
          "2015-01-01"
        ),
        status = list(
          statusCode = "CREATING"|"ACTIVE"|"UPDATING"|"DELETING"|"CREATION_FAILED"|"UPDATE_FAILED",
          statusReason = "string"
        ),
        workspace = "string"
      )
    )

### Request syntax

    svc$describe_logging_configuration(
      workspaceId = "string"
    )
