<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cognitoidentity_delete_identities</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes identities from an identity pool

### Description

Deletes identities from an identity pool. You can specify a list of 1-60
identities that you want to delete.

You must use AWS Developer credentials to call this API.

### Usage

    cognitoidentity_delete_identities(IdentityIdsToDelete)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cognitoidentity_delete_identities_:_IdentityIdsToDelete">IdentityIdsToDelete</code></td>
<td><p>[required] A list of 1-60 identities that you want to
delete.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      UnprocessedIdentityIds = list(
        list(
          IdentityId = "string",
          ErrorCode = "AccessDenied"|"InternalServerError"
        )
      )
    )

### Request syntax

    svc$delete_identities(
      IdentityIdsToDelete = list(
        "string"
      )
    )
