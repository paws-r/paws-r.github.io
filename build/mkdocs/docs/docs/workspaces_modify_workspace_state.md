<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>workspaces_modify_workspace_state</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Sets the state of the specified WorkSpace

### Description

Sets the state of the specified WorkSpace.

To maintain a WorkSpace without being interrupted, set the WorkSpace
state to `ADMIN_MAINTENANCE`. WorkSpaces in this state do not respond to
requests to reboot, stop, start, rebuild, or restore. An AutoStop
WorkSpace in this state is not stopped. Users cannot log into a
WorkSpace in the `ADMIN_MAINTENANCE` state.

### Usage

    workspaces_modify_workspace_state(WorkspaceId, WorkspaceState)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="workspaces_modify_workspace_state_:_WorkspaceId">WorkspaceId</code></td>
<td><p>[required] The identifier of the WorkSpace.</p></td>
</tr>
<tr class="even">
<td><code
id="workspaces_modify_workspace_state_:_WorkspaceState">WorkspaceState</code></td>
<td><p>[required] The WorkSpace state.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$modify_workspace_state(
      WorkspaceId = "string",
      WorkspaceState = "AVAILABLE"|"ADMIN_MAINTENANCE"
    )
