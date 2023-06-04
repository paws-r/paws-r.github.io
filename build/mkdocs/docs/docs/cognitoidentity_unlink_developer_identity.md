<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cognitoidentity_unlink_developer_identity</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Unlinks a DeveloperUserIdentifier from an existing identity

### Description

Unlinks a `DeveloperUserIdentifier` from an existing identity. Unlinked
developer users will be considered new identities next time they are
seen. If, for a given Cognito identity, you remove all federated
identities as well as the developer user identifier, the Cognito
identity becomes inaccessible.

You must use AWS Developer credentials to call this API.

### Usage

    cognitoidentity_unlink_developer_identity(IdentityId, IdentityPoolId,
      DeveloperProviderName, DeveloperUserIdentifier)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cognitoidentity_unlink_developer_identity_:_IdentityId">IdentityId</code></td>
<td><p>[required] A unique identifier in the format
REGION:GUID.</p></td>
</tr>
<tr class="even">
<td><code
id="cognitoidentity_unlink_developer_identity_:_IdentityPoolId">IdentityPoolId</code></td>
<td><p>[required] An identity pool ID in the format
REGION:GUID.</p></td>
</tr>
<tr class="odd">
<td><code
id="cognitoidentity_unlink_developer_identity_:_DeveloperProviderName">DeveloperProviderName</code></td>
<td><p>[required] The "domain" by which Cognito will refer to your
users.</p></td>
</tr>
<tr class="even">
<td><code
id="cognitoidentity_unlink_developer_identity_:_DeveloperUserIdentifier">DeveloperUserIdentifier</code></td>
<td><p>[required] A unique ID used by your backend authentication
process to identify a user.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$unlink_developer_identity(
      IdentityId = "string",
      IdentityPoolId = "string",
      DeveloperProviderName = "string",
      DeveloperUserIdentifier = "string"
    )
