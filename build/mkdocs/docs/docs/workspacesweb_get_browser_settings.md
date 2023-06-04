<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>workspacesweb_get_browser_settings</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets browser settings

### Description

Gets browser settings.

### Usage

    workspacesweb_get_browser_settings(browserSettingsArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="workspacesweb_get_browser_settings_:_browserSettingsArn">browserSettingsArn</code></td>
<td><p>[required] The ARN of the browser settings.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      browserSettings = list(
        associatedPortalArns = list(
          "string"
        ),
        browserPolicy = "string",
        browserSettingsArn = "string"
      )
    )

### Request syntax

    svc$get_browser_settings(
      browserSettingsArn = "string"
    )
