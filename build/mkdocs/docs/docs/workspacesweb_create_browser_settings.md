<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>workspacesweb_create_browser_settings</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a browser settings resource that can be associated with a web portal

### Description

Creates a browser settings resource that can be associated with a web
portal. Once associated with a web portal, browser settings control how
the browser will behave once a user starts a streaming session for the
web portal.

### Usage

    workspacesweb_create_browser_settings(additionalEncryptionContext,
      browserPolicy, clientToken, customerManagedKey, tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="workspacesweb_create_browser_settings_:_additionalEncryptionContext">additionalEncryptionContext</code></td>
<td><p>Additional encryption context of the browser settings.</p></td>
</tr>
<tr class="even">
<td><code
id="workspacesweb_create_browser_settings_:_browserPolicy">browserPolicy</code></td>
<td><p>[required] A JSON string containing Chrome Enterprise policies
that will be applied to all streaming sessions.</p></td>
</tr>
<tr class="odd">
<td><code
id="workspacesweb_create_browser_settings_:_clientToken">clientToken</code></td>
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
id="workspacesweb_create_browser_settings_:_customerManagedKey">customerManagedKey</code></td>
<td><p>The custom managed key of the browser settings.</p></td>
</tr>
<tr class="odd">
<td><code
id="workspacesweb_create_browser_settings_:_tags">tags</code></td>
<td><p>The tags to add to the browser settings resource. A tag is a
key-value pair.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      browserSettingsArn = "string"
    )

### Request syntax

    svc$create_browser_settings(
      additionalEncryptionContext = list(
        "string"
      ),
      browserPolicy = "string",
      clientToken = "string",
      customerManagedKey = "string",
      tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )
