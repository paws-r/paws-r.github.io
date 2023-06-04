<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>workspacesweb_update_browser_settings</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates browser settings

### Description

Updates browser settings.

### Usage

    workspacesweb_update_browser_settings(browserPolicy, browserSettingsArn,
      clientToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="workspacesweb_update_browser_settings_:_browserPolicy">browserPolicy</code></td>
<td><p>A JSON string containing Chrome Enterprise policies that will be
applied to all streaming sessions.</p></td>
</tr>
<tr class="even">
<td><code
id="workspacesweb_update_browser_settings_:_browserSettingsArn">browserSettingsArn</code></td>
<td><p>[required] The ARN of the browser settings.</p></td>
</tr>
<tr class="odd">
<td><code
id="workspacesweb_update_browser_settings_:_clientToken">clientToken</code></td>
<td><p>A unique, case-sensitive identifier that you provide to ensure
the idempotency of the request. Idempotency ensures that an API request
completes only once. With an idempotent request, if the original request
completes successfully, subsequent retries with the same client token
return the result from the original successful request.</p>
<p>If you do not specify a client token, one is automatically generated
by the AWS SDK.</p></td>
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

    svc$update_browser_settings(
      browserPolicy = "string",
      browserSettingsArn = "string",
      clientToken = "string"
    )
