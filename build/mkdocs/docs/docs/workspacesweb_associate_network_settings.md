<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>workspacesweb_associate_network_settings</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Associates a network settings resource with a web portal

### Description

Associates a network settings resource with a web portal.

### Usage

    workspacesweb_associate_network_settings(networkSettingsArn, portalArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="workspacesweb_associate_network_settings_:_networkSettingsArn">networkSettingsArn</code></td>
<td><p>[required] The ARN of the network settings.</p></td>
</tr>
<tr class="even">
<td><code
id="workspacesweb_associate_network_settings_:_portalArn">portalArn</code></td>
<td><p>[required] The ARN of the web portal.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      networkSettingsArn = "string",
      portalArn = "string"
    )

### Request syntax

    svc$associate_network_settings(
      networkSettingsArn = "string",
      portalArn = "string"
    )
