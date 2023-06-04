<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>workspacesweb_list_trust_stores</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves a list of trust stores

### Description

Retrieves a list of trust stores.

### Usage

    workspacesweb_list_trust_stores(maxResults, nextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="workspacesweb_list_trust_stores_:_maxResults">maxResults</code></td>
<td><p>The maximum number of results to be included in the next
page.</p></td>
</tr>
<tr class="even">
<td><code
id="workspacesweb_list_trust_stores_:_nextToken">nextToken</code></td>
<td><p>The pagination token used to retrieve the next page of results
for this operation.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      nextToken = "string",
      trustStores = list(
        list(
          trustStoreArn = "string"
        )
      )
    )

### Request syntax

    svc$list_trust_stores(
      maxResults = 123,
      nextToken = "string"
    )
