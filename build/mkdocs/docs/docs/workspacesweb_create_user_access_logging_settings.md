<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>workspacesweb_create_user_access_logging_settings</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a user access logging settings resource that can be associated with a web portal

### Description

Creates a user access logging settings resource that can be associated
with a web portal.

### Usage

    workspacesweb_create_user_access_logging_settings(clientToken,
      kinesisStreamArn, tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="workspacesweb_create_user_access_logging_settings_:_clientToken">clientToken</code></td>
<td><p>A unique, case-sensitive identifier that you provide to ensure
the idempotency of the request. Idempotency ensures that an API request
completes only once. With an idempotent request, if the original request
completes successfully, subsequent retries with the same client token
returns the result from the original successful request.</p>
<p>If you do not specify a client token, one is automatically generated
by the AWS SDK.</p></td>
</tr>
<tr class="even">
<td><code
id="workspacesweb_create_user_access_logging_settings_:_kinesisStreamArn">kinesisStreamArn</code></td>
<td><p>[required] The ARN of the Kinesis stream.</p></td>
</tr>
<tr class="odd">
<td><code
id="workspacesweb_create_user_access_logging_settings_:_tags">tags</code></td>
<td><p>The tags to add to the user settings resource. A tag is a
key-value pair.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      userAccessLoggingSettingsArn = "string"
    )

### Request syntax

    svc$create_user_access_logging_settings(
      clientToken = "string",
      kinesisStreamArn = "string",
      tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )
