<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>workspaces_restore_workspace</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Restores the specified WorkSpace to its last known healthy state

### Description

Restores the specified WorkSpace to its last known healthy state.

You cannot restore a WorkSpace unless its state is ` AVAILABLE`,
`ERROR`, `UNHEALTHY`, or `STOPPED`.

Restoring a WorkSpace is a potentially destructive action that can
result in the loss of data. For more information, see [Restore a
WorkSpace](https://docs.aws.amazon.com/workspaces/latest/adminguide/restore-workspace.html).

This operation is asynchronous and returns before the WorkSpace is
completely restored.

### Usage

    workspaces_restore_workspace(WorkspaceId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="workspaces_restore_workspace_:_WorkspaceId">WorkspaceId</code></td>
<td><p>[required] The identifier of the WorkSpace.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$restore_workspace(
      WorkspaceId = "string"
    )
