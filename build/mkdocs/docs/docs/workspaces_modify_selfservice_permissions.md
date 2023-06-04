<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>workspaces_modify_selfservice_permissions</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Modifies the self-service WorkSpace management capabilities for your users

### Description

Modifies the self-service WorkSpace management capabilities for your
users. For more information, see [Enable Self-Service WorkSpace
Management Capabilities for Your
Users](https://docs.aws.amazon.com/workspaces/latest/adminguide/enable-user-self-service-workspace-management.html).

### Usage

    workspaces_modify_selfservice_permissions(ResourceId,
      SelfservicePermissions)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="workspaces_modify_selfservice_permissions_:_ResourceId">ResourceId</code></td>
<td><p>[required] The identifier of the directory.</p></td>
</tr>
<tr class="even">
<td><code
id="workspaces_modify_selfservice_permissions_:_SelfservicePermissions">SelfservicePermissions</code></td>
<td><p>[required] The permissions to enable or disable self-service
capabilities.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$modify_selfservice_permissions(
      ResourceId = "string",
      SelfservicePermissions = list(
        RestartWorkspace = "ENABLED"|"DISABLED",
        IncreaseVolumeSize = "ENABLED"|"DISABLED",
        ChangeComputeType = "ENABLED"|"DISABLED",
        SwitchRunningMode = "ENABLED"|"DISABLED",
        RebuildWorkspace = "ENABLED"|"DISABLED"
      )
    )
