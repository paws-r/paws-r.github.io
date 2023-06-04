<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>workspacesweb_delete_user_settings</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes user settings

### Description

Deletes user settings.

### Usage

    workspacesweb_delete_user_settings(userSettingsArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="workspacesweb_delete_user_settings_:_userSettingsArn">userSettingsArn</code></td>
<td><p>[required] The ARN of the user settings.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_user_settings(
      userSettingsArn = "string"
    )
