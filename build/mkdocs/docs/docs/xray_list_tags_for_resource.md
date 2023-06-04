<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>xray_list_tags_for_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a list of tags that are applied to the specified Amazon Web Services X-Ray group or sampling rule

### Description

Returns a list of tags that are applied to the specified Amazon Web
Services X-Ray group or sampling rule.

### Usage

    xray_list_tags_for_resource(ResourceARN, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="xray_list_tags_for_resource_:_ResourceARN">ResourceARN</code></td>
<td><p>[required] The Amazon Resource Number (ARN) of an X-Ray group or
sampling rule.</p></td>
</tr>
<tr class="even">
<td><code
id="xray_list_tags_for_resource_:_NextToken">NextToken</code></td>
<td><p>A pagination token. If multiple pages of results are returned,
use the <code>NextToken</code> value returned with the current page of
results as the value of this parameter to get the next page of
results.</p></td>
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
      NextToken = "string"
    )
