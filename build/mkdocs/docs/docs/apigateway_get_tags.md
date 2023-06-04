<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>apigateway_get_tags</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets the Tags collection for a given resource

### Description

Gets the Tags collection for a given resource.

### Usage

    apigateway_get_tags(resourceArn, position, limit)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="apigateway_get_tags_:_resourceArn">resourceArn</code></td>
<td><p>[required] The ARN of a resource that can be tagged.</p></td>
</tr>
<tr class="even">
<td><code id="apigateway_get_tags_:_position">position</code></td>
<td><p>(Not currently supported) The current pagination position in the
paged result set.</p></td>
</tr>
<tr class="odd">
<td><code id="apigateway_get_tags_:_limit">limit</code></td>
<td><p>(Not currently supported) The maximum number of returned results
per page. The default value is 25 and the maximum value is 500.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      tags = list(
        "string"
      )
    )

### Request syntax

    svc$get_tags(
      resourceArn = "string",
      position = "string",
      limit = 123
    )
