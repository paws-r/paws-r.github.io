<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cognitoidentity_merge_developer_identities</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Merges two users having different IdentityIds, existing in the same identity pool, and identified by the same developer provider

### Description

Merges two users having different `IdentityId`s, existing in the same
identity pool, and identified by the same developer provider. You can
use this action to request that discrete users be merged and identified
as a single user in the Cognito environment. Cognito associates the
given source user (`SourceUserIdentifier`) with the `IdentityId` of the
`DestinationUserIdentifier`. Only developer-authenticated users can be
merged. If the users to be merged are associated with the same public
provider, but as two different users, an exception will be thrown.

The number of linked logins is limited to 20. So, the number of linked
logins for the source user, `SourceUserIdentifier`, and the destination
user, `DestinationUserIdentifier`, together should not be larger than
20. Otherwise, an exception will be thrown.

You must use AWS Developer credentials to call this API.

### Usage

    cognitoidentity_merge_developer_identities(SourceUserIdentifier,
      DestinationUserIdentifier, DeveloperProviderName, IdentityPoolId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cognitoidentity_merge_developer_identities_:_SourceUserIdentifier">SourceUserIdentifier</code></td>
<td><p>[required] User identifier for the source user. The value should
be a <code>DeveloperUserIdentifier</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="cognitoidentity_merge_developer_identities_:_DestinationUserIdentifier">DestinationUserIdentifier</code></td>
<td><p>[required] User identifier for the destination user. The value
should be a <code>DeveloperUserIdentifier</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="cognitoidentity_merge_developer_identities_:_DeveloperProviderName">DeveloperProviderName</code></td>
<td><p>[required] The "domain" by which Cognito will refer to your
users. This is a (pseudo) domain name that you provide while creating an
identity pool. This name acts as a placeholder that allows your backend
and the Cognito service to communicate about the developer provider. For
the <code>DeveloperProviderName</code>, you can use letters as well as
period (.), underscore (_), and dash (-).</p></td>
</tr>
<tr class="even">
<td><code
id="cognitoidentity_merge_developer_identities_:_IdentityPoolId">IdentityPoolId</code></td>
<td><p>[required] An identity pool ID in the format
REGION:GUID.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      IdentityId = "string"
    )

### Request syntax

    svc$merge_developer_identities(
      SourceUserIdentifier = "string",
      DestinationUserIdentifier = "string",
      DeveloperProviderName = "string",
      IdentityPoolId = "string"
    )
