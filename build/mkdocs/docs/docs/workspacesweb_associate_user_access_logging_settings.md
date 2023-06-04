<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>workspacesweb_associate_user_access_logging_settings</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Associates a user access logging settings resource with a web portal

### Description

Associates a user access logging settings resource with a web portal.

### Usage

    workspacesweb_associate_user_access_logging_settings(portalArn,
      userAccessLoggingSettingsArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="workspacesweb_associate_user_access_logging_settings_:_portalArn">portalArn</code></td>
<td><p>[required] The ARN of the web portal.</p></td>
</tr>
<tr class="even">
<td><code
id="workspacesweb_associate_user_access_logging_settings_:_userAccessLoggingSettingsArn">userAccessLoggingSettingsArn</code></td>
<td><p>[required] The ARN of the user access logging settings.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      portalArn = "string",
      userAccessLoggingSettingsArn = "string"
    )

### Request syntax

    svc$associate_user_access_logging_settings(
      portalArn = "string",
      userAccessLoggingSettingsArn = "string"
    )
