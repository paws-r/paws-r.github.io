<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cognitoidentity_lookup_developer_identity</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves the IdentityID associated with a DeveloperUserIdentifier or the list of DeveloperUserIdentifier values associated with an IdentityId for an existing identity

### Description

Retrieves the `IdentityID` associated with a `DeveloperUserIdentifier`
or the list of `DeveloperUserIdentifier` values associated with an
`IdentityId` for an existing identity. Either `IdentityID` or
`DeveloperUserIdentifier` must not be null. If you supply only one of
these values, the other value will be searched in the database and
returned as a part of the response. If you supply both,
`DeveloperUserIdentifier` will be matched against `IdentityID`. If the
values are verified against the database, the response returns both
values and is the same as the request. Otherwise a
`ResourceConflictException` is thrown.

`lookup_developer_identity` is intended for low-throughput control plane
operations: for example, to enable customer service to locate an
identity ID by username. If you are using it for higher-volume
operations such as user authentication, your requests are likely to be
throttled. `get_open_id_token_for_developer_identity` is a better option
for higher-volume operations for user authentication.

You must use AWS Developer credentials to call this API.

### Usage

    cognitoidentity_lookup_developer_identity(IdentityPoolId, IdentityId,
      DeveloperUserIdentifier, MaxResults, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cognitoidentity_lookup_developer_identity_:_IdentityPoolId">IdentityPoolId</code></td>
<td><p>[required] An identity pool ID in the format
REGION:GUID.</p></td>
</tr>
<tr class="even">
<td><code
id="cognitoidentity_lookup_developer_identity_:_IdentityId">IdentityId</code></td>
<td><p>A unique identifier in the format REGION:GUID.</p></td>
</tr>
<tr class="odd">
<td><code
id="cognitoidentity_lookup_developer_identity_:_DeveloperUserIdentifier">DeveloperUserIdentifier</code></td>
<td><p>A unique ID used by your backend authentication process to
identify a user. Typically, a developer identity provider would issue
many developer user identifiers, in keeping with the number of
users.</p></td>
</tr>
<tr class="even">
<td><code
id="cognitoidentity_lookup_developer_identity_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of identities to return.</p></td>
</tr>
<tr class="odd">
<td><code
id="cognitoidentity_lookup_developer_identity_:_NextToken">NextToken</code></td>
<td><p>A pagination token. The first call you make will have
<code>NextToken</code> set to null. After that the service will return
<code>NextToken</code> values as needed. For example, let's say you make
a request with <code>MaxResults</code> set to 10, and there are 20
matches in the database. The service will return a pagination token as a
part of the response. This token can be used to call the API again and
get results starting from the 11th match.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      IdentityId = "string",
      DeveloperUserIdentifierList = list(
        "string"
      ),
      NextToken = "string"
    )

### Request syntax

    svc$lookup_developer_identity(
      IdentityPoolId = "string",
      IdentityId = "string",
      DeveloperUserIdentifier = "string",
      MaxResults = 123,
      NextToken = "string"
    )
