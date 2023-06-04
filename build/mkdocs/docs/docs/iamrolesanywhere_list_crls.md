<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>iamrolesanywhere_list_crls</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists all certificate revocation lists (CRL) in the authenticated account and Amazon Web Services Region

### Description

Lists all certificate revocation lists (CRL) in the authenticated
account and Amazon Web Services Region.

**Required permissions:** `rolesanywhere:ListCrls`.

### Usage

    iamrolesanywhere_list_crls(nextToken, pageSize)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="iamrolesanywhere_list_crls_:_nextToken">nextToken</code></td>
<td><p>A token that indicates where the output should continue from, if
a previous request did not show all results. To get the next results,
make the request again with this value.</p></td>
</tr>
<tr class="even">
<td><code
id="iamrolesanywhere_list_crls_:_pageSize">pageSize</code></td>
<td><p>The number of resources in the paginated list.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      crls = list(
        list(
          createdAt = as.POSIXct(
            "2015-01-01"
          ),
          crlArn = "string",
          crlData = raw,
          crlId = "string",
          enabled = TRUE|FALSE,
          name = "string",
          trustAnchorArn = "string",
          updatedAt = as.POSIXct(
            "2015-01-01"
          )
        )
      ),
      nextToken = "string"
    )

### Request syntax

    svc$list_crls(
      nextToken = "string",
      pageSize = 123
    )
