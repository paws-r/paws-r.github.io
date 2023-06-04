<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>appregistry_tag_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Assigns one or more tags (key-value pairs) to the specified resource

### Description

Assigns one or more tags (key-value pairs) to the specified resource.

Each tag consists of a key and an optional value. If a tag with the same
key is already associated with the resource, this action updates its
value.

This operation returns an empty response if the call was successful.

### Usage

    appregistry_tag_resource(resourceArn, tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="appregistry_tag_resource_:_resourceArn">resourceArn</code></td>
<td><p>[required] The Amazon resource name (ARN) that specifies the
resource.</p></td>
</tr>
<tr class="even">
<td><code id="appregistry_tag_resource_:_tags">tags</code></td>
<td><p>[required] The new or modified tags for the resource.</p></td>
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
