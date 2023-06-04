<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>efs_list_tags_for_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists all tags for a top-level EFS resource

### Description

Lists all tags for a top-level EFS resource. You must provide the ID of
the resource that you want to retrieve the tags for.

This operation requires permissions for the
`elasticfilesystem:DescribeAccessPoints` action.

### Usage

    efs_list_tags_for_resource(ResourceId, MaxResults, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="efs_list_tags_for_resource_:_ResourceId">ResourceId</code></td>
<td><p>[required] Specifies the EFS resource you want to retrieve tags
for. You can retrieve tags for EFS file systems and access points using
this API endpoint.</p></td>
</tr>
<tr class="even">
<td><code
id="efs_list_tags_for_resource_:_MaxResults">MaxResults</code></td>
<td><p>(Optional) Specifies the maximum number of tag objects to return
in the response. The default value is 100.</p></td>
</tr>
<tr class="odd">
<td><code
id="efs_list_tags_for_resource_:_NextToken">NextToken</code></td>
<td><p>(Optional) You can use <code>NextToken</code> in a subsequent
request to fetch the next page of access point descriptions if the
response payload was paginated.</p></td>
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
      ResourceId = "string",
      MaxResults = 123,
      NextToken = "string"
    )
