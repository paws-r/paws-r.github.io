<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>opsworks_list_tags</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a list of tags that are applied to the specified stack or layer

### Description

Returns a list of tags that are applied to the specified stack or layer.

### Usage

    opsworks_list_tags(ResourceArn, MaxResults, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="opsworks_list_tags_:_ResourceArn">ResourceArn</code></td>
<td><p>[required] The stack or layer's Amazon Resource Number
(ARN).</p></td>
</tr>
<tr class="even">
<td><code id="opsworks_list_tags_:_MaxResults">MaxResults</code></td>
<td><p>Do not use. A validation exception occurs if you add a
<code>MaxResults</code> parameter to a <code>ListTagsRequest</code>
call.</p></td>
</tr>
<tr class="odd">
<td><code id="opsworks_list_tags_:_NextToken">NextToken</code></td>
<td><p>Do not use. A validation exception occurs if you add a
<code>NextToken</code> parameter to a <code>ListTagsRequest</code>
call.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Tags = list(
        "string"
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_tags(
      ResourceArn = "string",
      MaxResults = 123,
      NextToken = "string"
    )
