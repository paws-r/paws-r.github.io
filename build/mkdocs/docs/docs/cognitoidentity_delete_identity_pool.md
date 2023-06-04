<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cognitoidentity_delete_identity_pool</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes an identity pool

### Description

Deletes an identity pool. Once a pool is deleted, users will not be able
to authenticate with the pool.

You must use AWS Developer credentials to call this API.

### Usage

    cognitoidentity_delete_identity_pool(IdentityPoolId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cognitoidentity_delete_identity_pool_:_IdentityPoolId">IdentityPoolId</code></td>
<td><p>[required] An identity pool ID in the format
REGION:GUID.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_identity_pool(
      IdentityPoolId = "string"
    )
