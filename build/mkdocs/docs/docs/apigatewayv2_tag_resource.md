<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>apigatewayv2_tag_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a new Tag resource to represent a tag

### Description

Creates a new Tag resource to represent a tag.

### Usage

    apigatewayv2_tag_resource(ResourceArn, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="apigatewayv2_tag_resource_:_ResourceArn">ResourceArn</code></td>
<td><p>[required] The resource ARN for the tag.</p></td>
</tr>
<tr class="even">
<td><code id="apigatewayv2_tag_resource_:_Tags">Tags</code></td>
<td><p>The collection of tags. Each tag element is associated with a
given resource.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$tag_resource(
      ResourceArn = "string",
      Tags = list(
        "string"
      )
    )
