<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>resourcegroupstaggingapi_get_tag_keys</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns all tag keys currently in use in the specified Amazon Web Services Region for the calling account

### Description

Returns all tag keys currently in use in the specified Amazon Web
Services Region for the calling account.

This operation supports pagination, where the response can be sent in
multiple pages. You should check the `PaginationToken` response
parameter to determine if there are additional results available to
return. Repeat the query, passing the `PaginationToken` response
parameter value as an input to the next request until you recieve a
`null` value. A null value for `PaginationToken` indicates that there
are no more results waiting to be returned.

### Usage

    resourcegroupstaggingapi_get_tag_keys(PaginationToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="resourcegroupstaggingapi_get_tag_keys_:_PaginationToken">PaginationToken</code></td>
<td><p>Specifies a <code>PaginationToken</code> response value from a
previous request to indicate that you want the next page of results.
Leave this parameter empty in your initial request.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      PaginationToken = "string",
      TagKeys = list(
        "string"
      )
    )

### Request syntax

    svc$get_tag_keys(
      PaginationToken = "string"
    )
