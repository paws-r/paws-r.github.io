<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>workspacesweb_get_user_access_logging_settings</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets user access logging settings

### Description

Gets user access logging settings.

### Usage

    workspacesweb_get_user_access_logging_settings(
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
id="workspacesweb_get_user_access_logging_settings_:_userAccessLoggingSettingsArn">userAccessLoggingSettingsArn</code></td>
<td><p>[required] The ARN of the user access logging settings.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      userAccessLoggingSettings = list(
        associatedPortalArns = list(
          "string"
        ),
        kinesisStreamArn = "string",
        userAccessLoggingSettingsArn = "string"
      )
    )

### Request syntax

    svc$get_user_access_logging_settings(
      userAccessLoggingSettingsArn = "string"
    )
