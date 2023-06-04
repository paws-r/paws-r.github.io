<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>workspaces_stop_workspaces</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Stops the specified WorkSpaces

### Description

Stops the specified WorkSpaces.

You cannot stop a WorkSpace unless it has a running mode of `AutoStop`
and a state of `AVAILABLE`, `IMPAIRED`, `UNHEALTHY`, or `ERROR`.

### Usage

    workspaces_stop_workspaces(StopWorkspaceRequests)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="workspaces_stop_workspaces_:_StopWorkspaceRequests">StopWorkspaceRequests</code></td>
<td><p>[required] The WorkSpaces to stop. You can specify up to 25
WorkSpaces.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      FailedRequests = list(
        list(
          WorkspaceId = "string",
          ErrorCode = "string",
          ErrorMessage = "string"
        )
      )
    )

### Request syntax

    svc$stop_workspaces(
      StopWorkspaceRequests = list(
        list(
          WorkspaceId = "string"
        )
      )
    )
