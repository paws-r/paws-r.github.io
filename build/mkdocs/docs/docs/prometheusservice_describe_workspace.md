<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>prometheusservice_describe_workspace</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes an existing AMP workspace

### Description

Describes an existing AMP workspace.

### Usage

    prometheusservice_describe_workspace(workspaceId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="prometheusservice_describe_workspace_:_workspaceId">workspaceId</code></td>
<td><p>[required] The ID of the workspace to describe.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      workspace = list(
        alias = "string",
        arn = "string",
        createdAt = as.POSIXct(
          "2015-01-01"
        ),
        prometheusEndpoint = "string",
        status = list(
          statusCode = "CREATING"|"ACTIVE"|"UPDATING"|"DELETING"|"CREATION_FAILED"
        ),
        tags = list(
          "string"
        ),
        workspaceId = "string"
      )
    )

### Request syntax

    svc$describe_workspace(
      workspaceId = "string"
    )
