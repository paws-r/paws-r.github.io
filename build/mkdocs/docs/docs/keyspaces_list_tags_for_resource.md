<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>keyspaces_list_tags_for_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a list of all tags associated with the specified Amazon Keyspaces resource

### Description

Returns a list of all tags associated with the specified Amazon
Keyspaces resource.

### Usage

    keyspaces_list_tags_for_resource(resourceArn, nextToken, maxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="keyspaces_list_tags_for_resource_:_resourceArn">resourceArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the Amazon Keyspaces
resource.</p></td>
</tr>
<tr class="even">
<td><code
id="keyspaces_list_tags_for_resource_:_nextToken">nextToken</code></td>
<td><p>The pagination token. To resume pagination, provide the
<code>NextToken</code> value as argument of a subsequent API
invocation.</p></td>
</tr>
<tr class="odd">
<td><code
id="keyspaces_list_tags_for_resource_:_maxResults">maxResults</code></td>
<td><p>The total number of tags to return in the output. If the total
number of tags available is more than the value specified, a
<code>NextToken</code> is provided in the output. To resume pagination,
provide the <code>NextToken</code> value as an argument of a subsequent
API invocation.</p></td>
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
      resourceArn = "string",
      nextToken = "string",
      maxResults = 123
    )
