<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>frauddetector_list_tags_for_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists all tags associated with the resource

### Description

Lists all tags associated with the resource. This is a paginated API. To
get the next page results, provide the pagination token from the
response as part of your request. A null pagination token fetches the
records from the beginning.

### Usage

    frauddetector_list_tags_for_resource(resourceARN, nextToken, maxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="frauddetector_list_tags_for_resource_:_resourceARN">resourceARN</code></td>
<td><p>[required] The ARN that specifies the resource whose tags you
want to list.</p></td>
</tr>
<tr class="even">
<td><code
id="frauddetector_list_tags_for_resource_:_nextToken">nextToken</code></td>
<td><p>The next token from the previous results.</p></td>
</tr>
<tr class="odd">
<td><code
id="frauddetector_list_tags_for_resource_:_maxResults">maxResults</code></td>
<td><p>The maximum number of objects to return for the request.</p></td>
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
      resourceARN = "string",
      nextToken = "string",
      maxResults = 123
    )
