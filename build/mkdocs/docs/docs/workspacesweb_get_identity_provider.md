<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>workspacesweb_get_identity_provider</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets the identity provider

### Description

Gets the identity provider.

### Usage

    workspacesweb_get_identity_provider(identityProviderArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="workspacesweb_get_identity_provider_:_identityProviderArn">identityProviderArn</code></td>
<td><p>[required] The ARN of the identity provider.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      identityProvider = list(
        identityProviderArn = "string",
        identityProviderDetails = list(
          "string"
        ),
        identityProviderName = "string",
        identityProviderType = "SAML"|"Facebook"|"Google"|"LoginWithAmazon"|"SignInWithApple"|"OIDC"
      )
    )

### Request syntax

    svc$get_identity_provider(
      identityProviderArn = "string"
    )
