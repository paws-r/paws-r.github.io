<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>workspaces_reboot_workspaces</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Reboots the specified WorkSpaces

### Description

Reboots the specified WorkSpaces.

You cannot reboot a WorkSpace unless its state is `AVAILABLE` or
`UNHEALTHY`.

This operation is asynchronous and returns before the WorkSpaces have
rebooted.

### Usage

    workspaces_reboot_workspaces(RebootWorkspaceRequests)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="workspaces_reboot_workspaces_:_RebootWorkspaceRequests">RebootWorkspaceRequests</code></td>
<td><p>[required] The WorkSpaces to reboot. You can specify up to 25
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

    svc$reboot_workspaces(
      RebootWorkspaceRequests = list(
        list(
          WorkspaceId = "string"
        )
      )
    )
