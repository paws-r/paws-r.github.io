<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>workspaces_start_workspaces</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Starts the specified WorkSpaces

### Description

Starts the specified WorkSpaces.

You cannot start a WorkSpace unless it has a running mode of `AutoStop`
and a state of `STOPPED`.

### Usage

    workspaces_start_workspaces(StartWorkspaceRequests)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="workspaces_start_workspaces_:_StartWorkspaceRequests">StartWorkspaceRequests</code></td>
<td><p>[required] The WorkSpaces to start. You can specify up to 25
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

    svc$start_workspaces(
      StartWorkspaceRequests = list(
        list(
          WorkspaceId = "string"
        )
      )
    )
