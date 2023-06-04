<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>workspaces_modify_workspace_creation_properties</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Modify the default properties used to create WorkSpaces

### Description

Modify the default properties used to create WorkSpaces.

### Usage

    workspaces_modify_workspace_creation_properties(ResourceId,
      WorkspaceCreationProperties)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="workspaces_modify_workspace_creation_properties_:_ResourceId">ResourceId</code></td>
<td><p>[required] The identifier of the directory.</p></td>
</tr>
<tr class="even">
<td><code
id="workspaces_modify_workspace_creation_properties_:_WorkspaceCreationProperties">WorkspaceCreationProperties</code></td>
<td><p>[required] The default properties for creating
WorkSpaces.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$modify_workspace_creation_properties(
      ResourceId = "string",
      WorkspaceCreationProperties = list(
        EnableWorkDocs = TRUE|FALSE,
        EnableInternetAccess = TRUE|FALSE,
        DefaultOu = "string",
        CustomSecurityGroupId = "string",
        UserEnabledAsLocalAdministrator = TRUE|FALSE,
        EnableMaintenanceMode = TRUE|FALSE
      )
    )
