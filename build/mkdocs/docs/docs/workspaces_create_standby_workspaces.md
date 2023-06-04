<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>workspaces_create_standby_workspaces</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a standby WorkSpace in a secondary Region

### Description

Creates a standby WorkSpace in a secondary Region.

### Usage

    workspaces_create_standby_workspaces(PrimaryRegion, StandbyWorkspaces)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="workspaces_create_standby_workspaces_:_PrimaryRegion">PrimaryRegion</code></td>
<td><p>[required] The Region of the primary WorkSpace.</p></td>
</tr>
<tr class="even">
<td><code
id="workspaces_create_standby_workspaces_:_StandbyWorkspaces">StandbyWorkspaces</code></td>
<td><p>[required] Information about the standby WorkSpace to be
created.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      FailedStandbyRequests = list(
        list(
          StandbyWorkspaceRequest = list(
            PrimaryWorkspaceId = "string",
            VolumeEncryptionKey = "string",
            DirectoryId = "string",
            Tags = list(
              list(
                Key = "string",
                Value = "string"
              )
            )
          ),
          ErrorCode = "string",
          ErrorMessage = "string"
        )
      ),
      PendingStandbyRequests = list(
        list(
          UserName = "string",
          DirectoryId = "string",
          State = "PENDING"|"AVAILABLE"|"IMPAIRED"|"UNHEALTHY"|"REBOOTING"|"STARTING"|"REBUILDING"|"RESTORING"|"MAINTENANCE"|"ADMIN_MAINTENANCE"|"TERMINATING"|"TERMINATED"|"SUSPENDED"|"UPDATING"|"STOPPING"|"STOPPED"|"ERROR",
          WorkspaceId = "string"
        )
      )
    )

### Request syntax

    svc$create_standby_workspaces(
      PrimaryRegion = "string",
      StandbyWorkspaces = list(
        list(
          PrimaryWorkspaceId = "string",
          VolumeEncryptionKey = "string",
          DirectoryId = "string",
          Tags = list(
            list(
              Key = "string",
              Value = "string"
            )
          )
        )
      )
    )
