<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>workspaces_describe_workspaces_connection_status</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes the connection status of the specified WorkSpaces

### Description

Describes the connection status of the specified WorkSpaces.

### Usage

    workspaces_describe_workspaces_connection_status(WorkspaceIds,
      NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="workspaces_describe_workspaces_connection_status_:_WorkspaceIds">WorkspaceIds</code></td>
<td><p>The identifiers of the WorkSpaces. You can specify up to 25
WorkSpaces.</p></td>
</tr>
<tr class="even">
<td><code
id="workspaces_describe_workspaces_connection_status_:_NextToken">NextToken</code></td>
<td><p>If you received a <code>NextToken</code> from a previous call
that was paginated, provide this token to receive the next set of
results.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      WorkspacesConnectionStatus = list(
        list(
          WorkspaceId = "string",
          ConnectionState = "CONNECTED"|"DISCONNECTED"|"UNKNOWN",
          ConnectionStateCheckTimestamp = as.POSIXct(
            "2015-01-01"
          ),
          LastKnownUserConnectionTimestamp = as.POSIXct(
            "2015-01-01"
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$describe_workspaces_connection_status(
      WorkspaceIds = list(
        "string"
      ),
      NextToken = "string"
    )
