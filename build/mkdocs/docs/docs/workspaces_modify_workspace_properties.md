<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>workspaces_modify_workspace_properties</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Modifies the specified WorkSpace properties

### Description

Modifies the specified WorkSpace properties. For important information
about how to modify the size of the root and user volumes, see [Modify a
WorkSpace](https://docs.aws.amazon.com/workspaces/latest/adminguide/modify-workspaces.html).

The `MANUAL` running mode value is only supported by Amazon WorkSpaces
Core. Contact your account team to be allow-listed to use this value.
For more information, see [Amazon WorkSpaces
Core](https://aws.amazon.com/workspaces/core/).

### Usage

    workspaces_modify_workspace_properties(WorkspaceId, WorkspaceProperties)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="workspaces_modify_workspace_properties_:_WorkspaceId">WorkspaceId</code></td>
<td><p>[required] The identifier of the WorkSpace.</p></td>
</tr>
<tr class="even">
<td><code
id="workspaces_modify_workspace_properties_:_WorkspaceProperties">WorkspaceProperties</code></td>
<td><p>[required] The properties of the WorkSpace.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$modify_workspace_properties(
      WorkspaceId = "string",
      WorkspaceProperties = list(
        RunningMode = "AUTO_STOP"|"ALWAYS_ON"|"MANUAL",
        RunningModeAutoStopTimeoutInMinutes = 123,
        RootVolumeSizeGib = 123,
        UserVolumeSizeGib = 123,
        ComputeTypeName = "VALUE"|"STANDARD"|"PERFORMANCE"|"POWER"|"GRAPHICS"|"POWERPRO"|"GRAPHICSPRO"|"GRAPHICS_G4DN"|"GRAPHICSPRO_G4DN",
        Protocols = list(
          "PCOIP"|"WSP"
        )
      )
    )
