<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>apigatewayv2_get_tags</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets a collection of Tag resources

### Description

Gets a collection of Tag resources.

### Usage

    apigatewayv2_get_tags(ResourceArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="apigatewayv2_get_tags_:_ResourceArn">ResourceArn</code></td>
<td><p>[required] The resource ARN for the tag.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Tags = list(
        "string"
      )
    )

### Request syntax

    svc$get_tags(
      ResourceArn = "string"
    )
