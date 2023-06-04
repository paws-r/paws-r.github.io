<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>workspacesweb_create_portal</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a web portal

### Description

Creates a web portal.

### Usage

    workspacesweb_create_portal(additionalEncryptionContext,
      authenticationType, clientToken, customerManagedKey, displayName, tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="workspacesweb_create_portal_:_additionalEncryptionContext">additionalEncryptionContext</code></td>
<td><p>The additional encryption context of the portal.</p></td>
</tr>
<tr class="even">
<td><code
id="workspacesweb_create_portal_:_authenticationType">authenticationType</code></td>
<td><p>The type of authentication integration points used when signing
into the web portal. Defaults to <code>Standard</code>.</p>
<p><code>Standard</code> web portals are authenticated directly through
your identity provider. You need to call
<code>create_identity_provider</code> to integrate your identity
provider with your web portal. User and group access to your web portal
is controlled through your identity provider.</p>
<p><code>IAM_Identity_Center</code> web portals are authenticated
through AWS IAM Identity Center (successor to AWS Single Sign-On). They
provide additional features, such as IdP-initiated authentication.
Identity sources (including external identity provider integration),
plus user and group access to your web portal, can be configured in the
IAM Identity Center.</p></td>
</tr>
<tr class="odd">
<td><code
id="workspacesweb_create_portal_:_clientToken">clientToken</code></td>
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
id="workspacesweb_create_portal_:_customerManagedKey">customerManagedKey</code></td>
<td><p>The customer managed key of the web portal.</p></td>
</tr>
<tr class="odd">
<td><code
id="workspacesweb_create_portal_:_displayName">displayName</code></td>
<td><p>The name of the web portal. This is not visible to users who log
into the web portal.</p></td>
</tr>
<tr class="even">
<td><code id="workspacesweb_create_portal_:_tags">tags</code></td>
<td><p>The tags to add to the web portal. A tag is a key-value
pair.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      portalArn = "string",
      portalEndpoint = "string"
    )

### Request syntax

    svc$create_portal(
      additionalEncryptionContext = list(
        "string"
      ),
      authenticationType = "Standard"|"IAM_Identity_Center",
      clientToken = "string",
      customerManagedKey = "string",
      displayName = "string",
      tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )
