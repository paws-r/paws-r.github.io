<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cognitoidentity_list_identities</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists the identities in an identity pool

### Description

Lists the identities in an identity pool.

You must use AWS Developer credentials to call this API.

### Usage

    cognitoidentity_list_identities(IdentityPoolId, MaxResults, NextToken,
      HideDisabled)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cognitoidentity_list_identities_:_IdentityPoolId">IdentityPoolId</code></td>
<td><p>[required] An identity pool ID in the format
REGION:GUID.</p></td>
</tr>
<tr class="even">
<td><code
id="cognitoidentity_list_identities_:_MaxResults">MaxResults</code></td>
<td><p>[required] The maximum number of identities to return.</p></td>
</tr>
<tr class="odd">
<td><code
id="cognitoidentity_list_identities_:_NextToken">NextToken</code></td>
<td><p>A pagination token.</p></td>
</tr>
<tr class="even">
<td><code
id="cognitoidentity_list_identities_:_HideDisabled">HideDisabled</code></td>
<td><p>An optional boolean parameter that allows you to hide disabled
identities. If omitted, the ListIdentities API will include disabled
identities in the response.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      IdentityPoolId = "string",
      Identities = list(
        list(
          IdentityId = "string",
          Logins = list(
            "string"
          ),
          CreationDate = as.POSIXct(
            "2015-01-01"
          ),
          LastModifiedDate = as.POSIXct(
            "2015-01-01"
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_identities(
      IdentityPoolId = "string",
      MaxResults = 123,
      NextToken = "string",
      HideDisabled = TRUE|FALSE
    )
