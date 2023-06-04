<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cognitoidentity_unlink_identity</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Unlinks a federated identity from an existing account

### Description

Unlinks a federated identity from an existing account. Unlinked logins
will be considered new identities next time they are seen. Removing the
last linked login will make this identity inaccessible.

This is a public API. You do not need any credentials to call this API.

### Usage

    cognitoidentity_unlink_identity(IdentityId, Logins, LoginsToRemove)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cognitoidentity_unlink_identity_:_IdentityId">IdentityId</code></td>
<td><p>[required] A unique identifier in the format
REGION:GUID.</p></td>
</tr>
<tr class="even">
<td><code
id="cognitoidentity_unlink_identity_:_Logins">Logins</code></td>
<td><p>[required] A set of optional name-value pairs that map provider
names to provider tokens.</p></td>
</tr>
<tr class="odd">
<td><code
id="cognitoidentity_unlink_identity_:_LoginsToRemove">LoginsToRemove</code></td>
<td><p>[required] Provider names to unlink from this identity.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$unlink_identity(
      IdentityId = "string",
      Logins = list(
        "string"
      ),
      LoginsToRemove = list(
        "string"
      )
    )
