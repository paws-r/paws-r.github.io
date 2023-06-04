<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>clouddirectory_list_tags_for_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns tags for a resource

### Description

Returns tags for a resource. Tagging is currently supported only for
directories with a limit of 50 tags per directory. All 50 tags are
returned for a given directory with this API call.

### Usage

    clouddirectory_list_tags_for_resource(ResourceArn, NextToken,
      MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="clouddirectory_list_tags_for_resource_:_ResourceArn">ResourceArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the resource.
Tagging is only supported for directories.</p></td>
</tr>
<tr class="even">
<td><code
id="clouddirectory_list_tags_for_resource_:_NextToken">NextToken</code></td>
<td><p>The pagination token. This is for future use. Currently
pagination is not supported for tagging.</p></td>
</tr>
<tr class="odd">
<td><code
id="clouddirectory_list_tags_for_resource_:_MaxResults">MaxResults</code></td>
<td><p>The <code>MaxResults</code> parameter sets the maximum number of
results returned in a single page. This is for future use and is not
supported currently.</p></td>
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
      ResourceArn = "string",
      NextToken = "string",
      MaxResults = 123
    )
