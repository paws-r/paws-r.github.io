<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>worklink_tag_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Adds or overwrites one or more tags for the specified resource, such as a fleet

### Description

Adds or overwrites one or more tags for the specified resource, such as
a fleet. Each tag consists of a key and an optional value. If a resource
already has a tag with the same key, this operation updates its value.

### Usage

    worklink_tag_resource(ResourceArn, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="worklink_tag_resource_:_ResourceArn">ResourceArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the fleet.</p></td>
</tr>
<tr class="even">
<td><code id="worklink_tag_resource_:_Tags">Tags</code></td>
<td><p>[required] The tags to add to the resource. A tag is a key-value
pair.</p></td>
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
