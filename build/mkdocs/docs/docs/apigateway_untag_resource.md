<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>apigateway_untag_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Removes a tag from a given resource

### Description

Removes a tag from a given resource.

### Usage

    apigateway_untag_resource(resourceArn, tagKeys)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="apigateway_untag_resource_:_resourceArn">resourceArn</code></td>
<td><p>[required] The ARN of a resource that can be tagged.</p></td>
</tr>
<tr class="even">
<td><code id="apigateway_untag_resource_:_tagKeys">tagKeys</code></td>
<td><p>[required] The Tag keys to delete.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$untag_resource(
      resourceArn = "string",
      tagKeys = list(
        "string"
      )
    )
