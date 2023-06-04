<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>appmesh_list_meshes</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a list of existing service meshes

### Description

Returns a list of existing service meshes.

### Usage

    appmesh_list_meshes(limit, nextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="appmesh_list_meshes_:_limit">limit</code></td>
<td><p>The maximum number of results returned by
<code>list_meshes</code> in paginated output. When you use this
parameter, <code>list_meshes</code> returns only <code>limit</code>
results in a single page along with a <code>nextToken</code> response
element. You can see the remaining results of the initial request by
sending another <code>list_meshes</code> request with the returned
<code>nextToken</code> value. This value can be between 1 and 100. If
you don't use this parameter, <code>list_meshes</code> returns up to 100
results and a <code>nextToken</code> value if applicable.</p></td>
</tr>
<tr class="even">
<td><code id="appmesh_list_meshes_:_nextToken">nextToken</code></td>
<td><p>The <code>nextToken</code> value returned from a previous
paginated <code>list_meshes</code> request where <code>limit</code> was
used and the results exceeded the value of that parameter. Pagination
continues from the end of the previous results that returned the
<code>nextToken</code> value.</p>
<p>This token should be treated as an opaque identifier that is used
only to retrieve the next items in a list and not for other programmatic
purposes.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      meshes = list(
        list(
          arn = "string",
          createdAt = as.POSIXct(
            "2015-01-01"
          ),
          lastUpdatedAt = as.POSIXct(
            "2015-01-01"
          ),
          meshName = "string",
          meshOwner = "string",
          resourceOwner = "string",
          version = 123
        )
      ),
      nextToken = "string"
    )

### Request syntax

    svc$list_meshes(
      limit = 123,
      nextToken = "string"
    )
