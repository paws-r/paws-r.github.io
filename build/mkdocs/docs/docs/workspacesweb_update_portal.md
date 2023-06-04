<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>workspacesweb_update_portal</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates a web portal

### Description

Updates a web portal.

### Usage

    workspacesweb_update_portal(authenticationType, displayName, portalArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="workspacesweb_update_portal_:_authenticationType">authenticationType</code></td>
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
<tr class="even">
<td><code
id="workspacesweb_update_portal_:_displayName">displayName</code></td>
<td><p>The name of the web portal. This is not visible to users who log
into the web portal.</p></td>
</tr>
<tr class="odd">
<td><code
id="workspacesweb_update_portal_:_portalArn">portalArn</code></td>
<td><p>[required] The ARN of the web portal.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      portal = list(
        authenticationType = "Standard"|"IAM_Identity_Center",
        browserSettingsArn = "string",
        browserType = "Chrome",
        creationDate = as.POSIXct(
          "2015-01-01"
        ),
        displayName = "string",
        networkSettingsArn = "string",
        portalArn = "string",
        portalEndpoint = "string",
        portalStatus = "Incomplete"|"Pending"|"Active",
        rendererType = "AppStream",
        statusReason = "string",
        trustStoreArn = "string",
        userAccessLoggingSettingsArn = "string",
        userSettingsArn = "string"
      )
    )

### Request syntax

    svc$update_portal(
      authenticationType = "Standard"|"IAM_Identity_Center",
      displayName = "string",
      portalArn = "string"
    )
