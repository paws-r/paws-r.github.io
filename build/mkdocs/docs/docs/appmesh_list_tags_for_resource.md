<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>appmesh_list_tags_for_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## List the tags for an App Mesh resource

### Description

List the tags for an App Mesh resource.

### Usage

    appmesh_list_tags_for_resource(limit, nextToken, resourceArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="appmesh_list_tags_for_resource_:_limit">limit</code></td>
<td><p>The maximum number of tag results returned by
<code>list_tags_for_resource</code> in paginated output. When this
parameter is used, <code>list_tags_for_resource</code> returns only
<code>limit</code> results in a single page along with a
<code>nextToken</code> response element. You can see the remaining
results of the initial request by sending another
<code>list_tags_for_resource</code> request with the returned
<code>nextToken</code> value. This value can be between 1 and 100. If
you don't use this parameter, <code>list_tags_for_resource</code>
returns up to 100 results and a <code>nextToken</code> value if
applicable.</p></td>
</tr>
<tr class="even">
<td><code
id="appmesh_list_tags_for_resource_:_nextToken">nextToken</code></td>
<td><p>The <code>nextToken</code> value returned from a previous
paginated <code>list_tags_for_resource</code> request where
<code>limit</code> was used and the results exceeded the value of that
parameter. Pagination continues from the end of the previous results
that returned the <code>nextToken</code> value.</p></td>
</tr>
<tr class="odd">
<td><code
id="appmesh_list_tags_for_resource_:_resourceArn">resourceArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) that identifies the
resource to list the tags for.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      nextToken = "string",
      tags = list(
        list(
          key = "string",
          value = "string"
        )
      )
    )

### Request syntax

    svc$list_tags_for_resource(
      limit = 123,
      nextToken = "string",
      resourceArn = "string"
    )
