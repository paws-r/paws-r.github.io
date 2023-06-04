<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudhsmv2_list_tags</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets a list of tags for the specified AWS CloudHSM cluster

### Description

Gets a list of tags for the specified AWS CloudHSM cluster.

This is a paginated operation, which means that each response might
contain only a subset of all the tags. When the response contains only a
subset of tags, it includes a `NextToken` value. Use this value in a
subsequent `list_tags` request to get more tags. When you receive a
response with no `NextToken` (or an empty or null value), that means
there are no more tags to get.

### Usage

    cloudhsmv2_list_tags(ResourceId, NextToken, MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="cloudhsmv2_list_tags_:_ResourceId">ResourceId</code></td>
<td><p>[required] The cluster identifier (ID) for the cluster whose tags
you are getting. To find the cluster ID, use
<code>describe_clusters</code>.</p></td>
</tr>
<tr class="even">
<td><code id="cloudhsmv2_list_tags_:_NextToken">NextToken</code></td>
<td><p>The <code>NextToken</code> value that you received in the
previous response. Use this value to get more tags.</p></td>
</tr>
<tr class="odd">
<td><code id="cloudhsmv2_list_tags_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of tags to return in the response. When there
are more tags than the number you specify, the response contains a
<code>NextToken</code> value.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      TagList = list(
        list(
          Key = "string",
          Value = "string"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_tags(
      ResourceId = "string",
      NextToken = "string",
      MaxResults = 123
    )
