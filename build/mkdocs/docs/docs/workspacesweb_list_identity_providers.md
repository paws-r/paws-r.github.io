<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>workspacesweb_list_identity_providers</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves a list of identity providers for a specific web portal

### Description

Retrieves a list of identity providers for a specific web portal.

### Usage

    workspacesweb_list_identity_providers(maxResults, nextToken, portalArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="workspacesweb_list_identity_providers_:_maxResults">maxResults</code></td>
<td><p>The maximum number of results to be included in the next
page.</p></td>
</tr>
<tr class="even">
<td><code
id="workspacesweb_list_identity_providers_:_nextToken">nextToken</code></td>
<td><p>The pagination token used to retrieve the next page of results
for this operation.</p></td>
</tr>
<tr class="odd">
<td><code
id="workspacesweb_list_identity_providers_:_portalArn">portalArn</code></td>
<td><p>[required] The ARN of the web portal.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      identityProviders = list(
        list(
          identityProviderArn = "string",
          identityProviderName = "string",
          identityProviderType = "SAML"|"Facebook"|"Google"|"LoginWithAmazon"|"SignInWithApple"|"OIDC"
        )
      ),
      nextToken = "string"
    )

### Request syntax

    svc$list_identity_providers(
      maxResults = 123,
      nextToken = "string",
      portalArn = "string"
    )
