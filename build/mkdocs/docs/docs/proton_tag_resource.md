<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>proton_tag_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Tag a resource

### Description

Tag a resource. A tag is a key-value pair of metadata that you associate
with an Proton resource.

For more information, see [Proton resources and
tagging](https://docs.aws.amazon.com/proton/latest/userguide/resources.html)
in the *Proton User Guide*.

### Usage

    proton_tag_resource(resourceArn, tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="proton_tag_resource_:_resourceArn">resourceArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the Proton resource
to apply customer tags to.</p></td>
</tr>
<tr class="even">
<td><code id="proton_tag_resource_:_tags">tags</code></td>
<td><p>[required] A list of customer tags to apply to the Proton
resource.</p></td>
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
