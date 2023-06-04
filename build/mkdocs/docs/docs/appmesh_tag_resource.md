<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>appmesh_tag_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Associates the specified tags to a resource with the specified resourceArn

### Description

Associates the specified tags to a resource with the specified
`resourceArn`. If existing tags on a resource aren't specified in the
request parameters, they aren't changed. When a resource is deleted, the
tags associated with that resource are also deleted.

### Usage

    appmesh_tag_resource(resourceArn, tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="appmesh_tag_resource_:_resourceArn">resourceArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the resource to add
tags to.</p></td>
</tr>
<tr class="even">
<td><code id="appmesh_tag_resource_:_tags">tags</code></td>
<td><p>[required] The tags to add to the resource. A tag is an array of
key-value pairs. Tag keys can have a maximum character length of 128
characters, and tag values can have a maximum length of 256
characters.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$tag_resource(
      resourceArn = "string",
      tags = list(
        list(
          key = "string",
          value = "string"
        )
      )
    )
