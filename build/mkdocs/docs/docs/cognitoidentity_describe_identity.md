<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cognitoidentity_describe_identity</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns metadata related to the given identity, including when the identity was created and any associated linked logins

### Description

Returns metadata related to the given identity, including when the
identity was created and any associated linked logins.

You must use AWS Developer credentials to call this API.

### Usage

    cognitoidentity_describe_identity(IdentityId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cognitoidentity_describe_identity_:_IdentityId">IdentityId</code></td>
<td><p>[required] A unique identifier in the format
REGION:GUID.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

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

### Request syntax

    svc$describe_identity(
      IdentityId = "string"
    )
