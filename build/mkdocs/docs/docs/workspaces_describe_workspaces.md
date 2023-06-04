<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>workspaces_describe_workspaces</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes the specified WorkSpaces

### Description

Describes the specified WorkSpaces.

You can filter the results by using the bundle identifier, directory
identifier, or owner, but you can specify only one filter at a time.

### Usage

    workspaces_describe_workspaces(WorkspaceIds, DirectoryId, UserName,
      BundleId, Limit, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="workspaces_describe_workspaces_:_WorkspaceIds">WorkspaceIds</code></td>
<td><p>The identifiers of the WorkSpaces. You cannot combine this
parameter with any other filter.</p>
<p>Because the <code>create_workspaces</code> operation is asynchronous,
the identifier it returns is not immediately available. If you
immediately call <code>describe_workspaces</code> with this identifier,
no information is returned.</p></td>
</tr>
<tr class="even">
<td><code
id="workspaces_describe_workspaces_:_DirectoryId">DirectoryId</code></td>
<td><p>The identifier of the directory. In addition, you can optionally
specify a specific directory user (see <code>UserName</code>). You
cannot combine this parameter with any other filter.</p></td>
</tr>
<tr class="odd">
<td><code
id="workspaces_describe_workspaces_:_UserName">UserName</code></td>
<td><p>The name of the directory user. You must specify this parameter
with <code>DirectoryId</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="workspaces_describe_workspaces_:_BundleId">BundleId</code></td>
<td><p>The identifier of the bundle. All WorkSpaces that are created
from this bundle are retrieved. You cannot combine this parameter with
any other filter.</p></td>
</tr>
<tr class="odd">
<td><code id="workspaces_describe_workspaces_:_Limit">Limit</code></td>
<td><p>The maximum number of items to return.</p></td>
</tr>
<tr class="even">
<td><code
id="workspaces_describe_workspaces_:_NextToken">NextToken</code></td>
<td><p>If you received a <code>NextToken</code> from a previous call
that was paginated, provide this token to receive the next set of
results.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Workspaces = list(
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
      ),
      NextToken = "string"
    )

### Request syntax

    svc$describe_workspaces(
      WorkspaceIds = list(
        "string"
      ),
      DirectoryId = "string",
      UserName = "string",
      BundleId = "string",
      Limit = 123,
      NextToken = "string"
    )
