<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>workspacesweb_associate_browser_settings</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Associates a browser settings resource with a web portal

### Description

Associates a browser settings resource with a web portal.

### Usage

    workspacesweb_associate_browser_settings(browserSettingsArn, portalArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="workspacesweb_associate_browser_settings_:_browserSettingsArn">browserSettingsArn</code></td>
<td><p>[required] The ARN of the browser settings.</p></td>
</tr>
<tr class="even">
<td><code
id="workspacesweb_associate_browser_settings_:_portalArn">portalArn</code></td>
<td><p>[required] The ARN of the web portal.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      browserSettingsArn = "string",
      portalArn = "string"
    )

### Request syntax

    svc$associate_browser_settings(
      browserSettingsArn = "string",
      portalArn = "string"
    )
