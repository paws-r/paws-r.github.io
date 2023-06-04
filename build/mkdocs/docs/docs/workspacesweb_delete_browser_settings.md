<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>workspacesweb_delete_browser_settings</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes browser settings

### Description

Deletes browser settings.

### Usage

    workspacesweb_delete_browser_settings(browserSettingsArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="workspacesweb_delete_browser_settings_:_browserSettingsArn">browserSettingsArn</code></td>
<td><p>[required] The ARN of the browser settings.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_browser_settings(
      browserSettingsArn = "string"
    )
