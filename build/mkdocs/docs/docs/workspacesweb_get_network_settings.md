<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>workspacesweb_get_network_settings</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets the network settings

### Description

Gets the network settings.

### Usage

    workspacesweb_get_network_settings(networkSettingsArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="workspacesweb_get_network_settings_:_networkSettingsArn">networkSettingsArn</code></td>
<td><p>[required] The ARN of the network settings.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      networkSettings = list(
        associatedPortalArns = list(
          "string"
        ),
        networkSettingsArn = "string",
        securityGroupIds = list(
          "string"
        ),
        subnetIds = list(
          "string"
        ),
        vpcId = "string"
      )
    )

### Request syntax

    svc$get_network_settings(
      networkSettingsArn = "string"
    )
