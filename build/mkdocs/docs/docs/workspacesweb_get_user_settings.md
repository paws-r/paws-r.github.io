<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>workspacesweb_get_user_settings</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets user settings

### Description

Gets user settings.

### Usage

    workspacesweb_get_user_settings(userSettingsArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="workspacesweb_get_user_settings_:_userSettingsArn">userSettingsArn</code></td>
<td><p>[required] The ARN of the user settings.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      userSettings = list(
        associatedPortalArns = list(
          "string"
        ),
        copyAllowed = "Disabled"|"Enabled",
        disconnectTimeoutInMinutes = 123,
        downloadAllowed = "Disabled"|"Enabled",
        idleDisconnectTimeoutInMinutes = 123,
        pasteAllowed = "Disabled"|"Enabled",
        printAllowed = "Disabled"|"Enabled",
        uploadAllowed = "Disabled"|"Enabled",
        userSettingsArn = "string"
      )
    )

### Request syntax

    svc$get_user_settings(
      userSettingsArn = "string"
    )
