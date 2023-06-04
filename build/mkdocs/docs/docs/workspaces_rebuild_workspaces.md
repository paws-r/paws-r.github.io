<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>workspaces_rebuild_workspaces</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Rebuilds the specified WorkSpace

### Description

Rebuilds the specified WorkSpace.

You cannot rebuild a WorkSpace unless its state is `AVAILABLE`, `ERROR`,
`UNHEALTHY`, `STOPPED`, or `REBOOTING`.

Rebuilding a WorkSpace is a potentially destructive action that can
result in the loss of data. For more information, see [Rebuild a
WorkSpace](https://docs.aws.amazon.com/workspaces/latest/adminguide/rebuild-workspace.html).

This operation is asynchronous and returns before the WorkSpaces have
been completely rebuilt.

### Usage

    workspaces_rebuild_workspaces(RebuildWorkspaceRequests)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="workspaces_rebuild_workspaces_:_RebuildWorkspaceRequests">RebuildWorkspaceRequests</code></td>
<td><p>[required] The WorkSpace to rebuild. You can specify a single
WorkSpace.</p></td>
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

    svc$rebuild_workspaces(
      RebuildWorkspaceRequests = list(
        list(
          WorkspaceId = "string"
        )
      )
    )
