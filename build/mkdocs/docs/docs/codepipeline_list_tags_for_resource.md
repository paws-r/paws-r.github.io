<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codepipeline_list_tags_for_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets the set of key-value pairs (metadata) that are used to manage the resource

### Description

Gets the set of key-value pairs (metadata) that are used to manage the
resource.

### Usage

    codepipeline_list_tags_for_resource(resourceArn, nextToken, maxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="codepipeline_list_tags_for_resource_:_resourceArn">resourceArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the resource to get
tags for.</p></td>
</tr>
<tr class="even">
<td><code
id="codepipeline_list_tags_for_resource_:_nextToken">nextToken</code></td>
<td><p>The token that was returned from the previous API call, which
would be used to return the next page of the list. The
ListTagsforResource call lists all available tags in one call and does
not use pagination.</p></td>
</tr>
<tr class="odd">
<td><code
id="codepipeline_list_tags_for_resource_:_maxResults">maxResults</code></td>
<td><p>The maximum number of results to return in a single
call.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      tags = list(
        list(
          key = "string",
          value = "string"
        )
      ),
      nextToken = "string"
    )

### Request syntax

    svc$list_tags_for_resource(
      resourceArn = "string",
      nextToken = "string",
      maxResults = 123
    )
