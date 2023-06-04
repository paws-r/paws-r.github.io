<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>workspaces_create_workspaces</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates one or more WorkSpaces

### Description

Creates one or more WorkSpaces.

This operation is asynchronous and returns before the WorkSpaces are
created.

The `MANUAL` running mode value is only supported by Amazon WorkSpaces
Core. Contact your account team to be allow-listed to use this value.
For more information, see [Amazon WorkSpaces
Core](https://aws.amazon.com/workspaces/core/).

### Usage

    workspaces_create_workspaces(Workspaces)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="workspaces_create_workspaces_:_Workspaces">Workspaces</code></td>
<td><p>[required] The WorkSpaces to create. You can specify up to 25
WorkSpaces.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      FailedRequests = list(
        list(
          WorkspaceRequest = list(
            DirectoryId = "string",
            UserName = "string",
            BundleId = "string",
            VolumeEncryptionKey = "string",
            UserVolumeEncryptionEnabled = TRUE|FALSE,
            RootVolumeEncryptionEnabled = TRUE|FALSE,
            WorkspaceProperties = list(
              RunningMode = "AUTO_STOP"|"ALWAYS_ON"|"MANUAL",
              RunningModeAutoStopTimeoutInMinutes = 123,
              RootVolumeSizeGib = 123,
              UserVolumeSizeGib = 123,
              ComputeTypeName = "VALUE"|"STANDARD"|"PERFORMANCE"|"POWER"|"GRAPHICS"|"POWERPRO"|"GRAPHICSPRO"|"GRAPHICS_G4DN"|"GRAPHICSPRO_G4DN",
              Protocols = list(
                "PCOIP"|"WSP"
              )
            ),
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
      PendingRequests = list(
        list(
          WorkspaceId = "string",
          DirectoryId = "string",
          UserName = "string",
          IpAddress = "string",
          State = "PENDING"|"AVAILABLE"|"IMPAIRED"|"UNHEALTHY"|"REBOOTING"|"STARTING"|"REBUILDING"|"RESTORING"|"MAINTENANCE"|"ADMIN_MAINTENANCE"|"TERMINATING"|"TERMINATED"|"SUSPENDED"|"UPDATING"|"STOPPING"|"STOPPED"|"ERROR",
          BundleId = "string",
          SubnetId = "string",
          ErrorMessage = "string",
          ErrorCode = "string",
          ComputerName = "string",
          VolumeEncryptionKey = "string",
          UserVolumeEncryptionEnabled = TRUE|FALSE,
          RootVolumeEncryptionEnabled = TRUE|FALSE,
          WorkspaceProperties = list(
            RunningMode = "AUTO_STOP"|"ALWAYS_ON"|"MANUAL",
            RunningModeAutoStopTimeoutInMinutes = 123,
            RootVolumeSizeGib = 123,
            UserVolumeSizeGib = 123,
            ComputeTypeName = "VALUE"|"STANDARD"|"PERFORMANCE"|"POWER"|"GRAPHICS"|"POWERPRO"|"GRAPHICSPRO"|"GRAPHICS_G4DN"|"GRAPHICSPRO_G4DN",
            Protocols = list(
              "PCOIP"|"WSP"
            )
          ),
          ModificationStates = list(
            list(
              Resource = "ROOT_VOLUME"|"USER_VOLUME"|"COMPUTE_TYPE",
              State = "UPDATE_INITIATED"|"UPDATE_IN_PROGRESS"
            )
          ),
          RelatedWorkspaces = list(
            list(
              WorkspaceId = "string",
              Region = "string",
              State = "PENDING"|"AVAILABLE"|"IMPAIRED"|"UNHEALTHY"|"REBOOTING"|"STARTING"|"REBUILDING"|"RESTORING"|"MAINTENANCE"|"ADMIN_MAINTENANCE"|"TERMINATING"|"TERMINATED"|"SUSPENDED"|"UPDATING"|"STOPPING"|"STOPPED"|"ERROR",
              Type = "PRIMARY"|"STANDBY"
            )
          )
        )
      )
    )

### Request syntax

    svc$create_workspaces(
      Workspaces = list(
        list(
          DirectoryId = "string",
          UserName = "string",
          BundleId = "string",
          VolumeEncryptionKey = "string",
          UserVolumeEncryptionEnabled = TRUE|FALSE,
          RootVolumeEncryptionEnabled = TRUE|FALSE,
          WorkspaceProperties = list(
            RunningMode = "AUTO_STOP"|"ALWAYS_ON"|"MANUAL",
            RunningModeAutoStopTimeoutInMinutes = 123,
            RootVolumeSizeGib = 123,
            UserVolumeSizeGib = 123,
            ComputeTypeName = "VALUE"|"STANDARD"|"PERFORMANCE"|"POWER"|"GRAPHICS"|"POWERPRO"|"GRAPHICSPRO"|"GRAPHICS_G4DN"|"GRAPHICSPRO_G4DN",
            Protocols = list(
              "PCOIP"|"WSP"
            )
          ),
          Tags = list(
            list(
              Key = "string",
              Value = "string"
            )
          )
        )
      )
    )
