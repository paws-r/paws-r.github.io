<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>athena_list_tags_for_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists the tags associated with an Athena resource

### Description

Lists the tags associated with an Athena resource.

### Usage

    athena_list_tags_for_resource(ResourceARN, NextToken, MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="athena_list_tags_for_resource_:_ResourceARN">ResourceARN</code></td>
<td><p>[required] Lists the tags for the resource with the specified
ARN.</p></td>
</tr>
<tr class="even">
<td><code
id="athena_list_tags_for_resource_:_NextToken">NextToken</code></td>
<td><p>The token for the next set of results, or null if there are no
additional results for this request, where the request lists the tags
for the resource with the specified ARN.</p></td>
</tr>
<tr class="odd">
<td><code
id="athena_list_tags_for_resource_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to be returned per request that
lists the tags for the resource.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_tags_for_resource(
      ResourceARN = "string",
      NextToken = "string",
      MaxResults = 123
    )
