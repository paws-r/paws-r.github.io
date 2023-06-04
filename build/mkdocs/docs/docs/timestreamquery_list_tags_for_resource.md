<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>timestreamquery_list_tags_for_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## List all tags on a Timestream query resource

### Description

List all tags on a Timestream query resource.

### Usage

    timestreamquery_list_tags_for_resource(ResourceARN, MaxResults,
      NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="timestreamquery_list_tags_for_resource_:_ResourceARN">ResourceARN</code></td>
<td><p>[required] The Timestream resource with tags to be listed. This
value is an Amazon Resource Name (ARN).</p></td>
</tr>
<tr class="even">
<td><code
id="timestreamquery_list_tags_for_resource_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of tags to return.</p></td>
</tr>
<tr class="odd">
<td><code
id="timestreamquery_list_tags_for_resource_:_NextToken">NextToken</code></td>
<td><p>A pagination token to resume pagination.</p></td>
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
      MaxResults = 123,
      NextToken = "string"
    )
