<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>apigateway_tag_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Adds or updates a tag on a given resource

### Description

Adds or updates a tag on a given resource.

### Usage

    apigateway_tag_resource(resourceArn, tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="apigateway_tag_resource_:_resourceArn">resourceArn</code></td>
<td><p>[required] The ARN of a resource that can be tagged.</p></td>
</tr>
<tr class="even">
<td><code id="apigateway_tag_resource_:_tags">tags</code></td>
<td><p>[required] The key-value map of strings. The valid character set
is [a-zA-Z+-=._:/]. The tag key can be up to 128 characters and must not
start with <code style="white-space: pre;">⁠aws:⁠</code>. The tag value
can be up to 256 characters.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$tag_resource(
      resourceArn = "string",
      tags = list(
        "string"
      )
    )
