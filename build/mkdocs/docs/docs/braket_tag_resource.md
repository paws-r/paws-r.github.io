<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>braket_tag_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Add a tag to the specified resource

### Description

Add a tag to the specified resource.

### Usage

    braket_tag_resource(resourceArn, tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="braket_tag_resource_:_resourceArn">resourceArn</code></td>
<td><p>[required] Specify the <code>resourceArn</code> of the resource
to which a tag will be added.</p></td>
</tr>
<tr class="even">
<td><code id="braket_tag_resource_:_tags">tags</code></td>
<td><p>[required] Specify the tags to add to the resource.</p></td>
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
