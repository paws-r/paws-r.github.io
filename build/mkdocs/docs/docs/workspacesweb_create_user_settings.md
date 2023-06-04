<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>workspacesweb_create_user_settings</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a user settings resource that can be associated with a web portal

### Description

Creates a user settings resource that can be associated with a web
portal. Once associated with a web portal, user settings control how
users can transfer data between a streaming session and the their local
devices.

### Usage

    workspacesweb_create_user_settings(clientToken, copyAllowed,
      disconnectTimeoutInMinutes, downloadAllowed,
      idleDisconnectTimeoutInMinutes, pasteAllowed, printAllowed, tags,
      uploadAllowed)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="workspacesweb_create_user_settings_:_clientToken">clientToken</code></td>
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
id="workspacesweb_create_user_settings_:_copyAllowed">copyAllowed</code></td>
<td><p>[required] Specifies whether the user can copy text from the
streaming session to the local device.</p></td>
</tr>
<tr class="odd">
<td><code
id="workspacesweb_create_user_settings_:_disconnectTimeoutInMinutes">disconnectTimeoutInMinutes</code></td>
<td><p>The amount of time that a streaming session remains active after
users disconnect.</p></td>
</tr>
<tr class="even">
<td><code
id="workspacesweb_create_user_settings_:_downloadAllowed">downloadAllowed</code></td>
<td><p>[required] Specifies whether the user can download files from the
streaming session to the local device.</p></td>
</tr>
<tr class="odd">
<td><code
id="workspacesweb_create_user_settings_:_idleDisconnectTimeoutInMinutes">idleDisconnectTimeoutInMinutes</code></td>
<td><p>The amount of time that users can be idle (inactive) before they
are disconnected from their streaming session and the disconnect timeout
interval begins.</p></td>
</tr>
<tr class="even">
<td><code
id="workspacesweb_create_user_settings_:_pasteAllowed">pasteAllowed</code></td>
<td><p>[required] Specifies whether the user can paste text from the
local device to the streaming session.</p></td>
</tr>
<tr class="odd">
<td><code
id="workspacesweb_create_user_settings_:_printAllowed">printAllowed</code></td>
<td><p>[required] Specifies whether the user can print to the local
device.</p></td>
</tr>
<tr class="even">
<td><code
id="workspacesweb_create_user_settings_:_tags">tags</code></td>
<td><p>The tags to add to the user settings resource. A tag is a
key-value pair.</p></td>
</tr>
<tr class="odd">
<td><code
id="workspacesweb_create_user_settings_:_uploadAllowed">uploadAllowed</code></td>
<td><p>[required] Specifies whether the user can upload files from the
local device to the streaming session.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      userSettingsArn = "string"
    )

### Request syntax

    svc$create_user_settings(
      clientToken = "string",
      copyAllowed = "Disabled"|"Enabled",
      disconnectTimeoutInMinutes = 123,
      downloadAllowed = "Disabled"|"Enabled",
      idleDisconnectTimeoutInMinutes = 123,
      pasteAllowed = "Disabled"|"Enabled",
      printAllowed = "Disabled"|"Enabled",
      tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      ),
      uploadAllowed = "Disabled"|"Enabled"
    )
