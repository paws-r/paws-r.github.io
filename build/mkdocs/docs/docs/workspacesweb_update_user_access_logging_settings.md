<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>workspacesweb_update_user_access_logging_settings</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates the user access logging settings

### Description

Updates the user access logging settings.

### Usage

    workspacesweb_update_user_access_logging_settings(clientToken,
      kinesisStreamArn, userAccessLoggingSettingsArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="workspacesweb_update_user_access_logging_settings_:_clientToken">clientToken</code></td>
<td><p>A unique, case-sensitive identifier that you provide to ensure
the idempotency of the request. Idempotency ensures that an API request
completes only once. With an idempotent request, if the original request
completes successfully, subsequent retries with the same client token
return the result from the original successful request.</p>
<p>If you do not specify a client token, one is automatically generated
by the AWS SDK.</p></td>
</tr>
<tr class="even">
<td><code
id="workspacesweb_update_user_access_logging_settings_:_kinesisStreamArn">kinesisStreamArn</code></td>
<td><p>The ARN of the Kinesis stream.</p></td>
</tr>
<tr class="odd">
<td><code
id="workspacesweb_update_user_access_logging_settings_:_userAccessLoggingSettingsArn">userAccessLoggingSettingsArn</code></td>
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

    svc$update_user_access_logging_settings(
      clientToken = "string",
      kinesisStreamArn = "string",
      userAccessLoggingSettingsArn = "string"
    )
