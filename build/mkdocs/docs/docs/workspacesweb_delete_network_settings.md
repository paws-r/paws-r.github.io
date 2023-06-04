<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>workspacesweb_delete_network_settings</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes network settings

### Description

Deletes network settings.

### Usage

    workspacesweb_delete_network_settings(networkSettingsArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="workspacesweb_delete_network_settings_:_networkSettingsArn">networkSettingsArn</code></td>
<td><p>[required] The ARN of the network settings.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_network_settings(
      networkSettingsArn = "string"
    )
