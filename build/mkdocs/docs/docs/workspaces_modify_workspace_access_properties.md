<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>workspaces_modify_workspace_access_properties</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Specifies which devices and operating systems users can use to access their WorkSpaces

### Description

Specifies which devices and operating systems users can use to access
their WorkSpaces. For more information, see [Control Device
Access](https://docs.aws.amazon.com/workspaces/latest/adminguide/update-directory-details.html#control-device-access).

### Usage

    workspaces_modify_workspace_access_properties(ResourceId,
      WorkspaceAccessProperties)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="workspaces_modify_workspace_access_properties_:_ResourceId">ResourceId</code></td>
<td><p>[required] The identifier of the directory.</p></td>
</tr>
<tr class="even">
<td><code
id="workspaces_modify_workspace_access_properties_:_WorkspaceAccessProperties">WorkspaceAccessProperties</code></td>
<td><p>[required] The device types and operating systems to enable or
disable for access.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$modify_workspace_access_properties(
      ResourceId = "string",
      WorkspaceAccessProperties = list(
        DeviceTypeWindows = "ALLOW"|"DENY",
        DeviceTypeOsx = "ALLOW"|"DENY",
        DeviceTypeWeb = "ALLOW"|"DENY",
        DeviceTypeIos = "ALLOW"|"DENY",
        DeviceTypeAndroid = "ALLOW"|"DENY",
        DeviceTypeChromeOs = "ALLOW"|"DENY",
        DeviceTypeZeroClient = "ALLOW"|"DENY",
        DeviceTypeLinux = "ALLOW"|"DENY"
      )
    )
