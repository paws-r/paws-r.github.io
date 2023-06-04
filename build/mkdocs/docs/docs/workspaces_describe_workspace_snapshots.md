<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>workspaces_describe_workspace_snapshots</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes the snapshots for the specified WorkSpace

### Description

Describes the snapshots for the specified WorkSpace.

### Usage

    workspaces_describe_workspace_snapshots(WorkspaceId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="workspaces_describe_workspace_snapshots_:_WorkspaceId">WorkspaceId</code></td>
<td><p>[required] The identifier of the WorkSpace.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      RebuildSnapshots = list(
        list(
          SnapshotTime = as.POSIXct(
            "2015-01-01"
          )
        )
      ),
      RestoreSnapshots = list(
        list(
          SnapshotTime = as.POSIXct(
            "2015-01-01"
          )
        )
      )
    )

### Request syntax

    svc$describe_workspace_snapshots(
      WorkspaceId = "string"
    )
