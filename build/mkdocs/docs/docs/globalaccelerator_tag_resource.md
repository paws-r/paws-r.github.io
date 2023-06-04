<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>globalaccelerator_tag_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Add tags to an accelerator resource

### Description

Add tags to an accelerator resource.

For more information, see [Tagging in Global
Accelerator](https://docs.aws.amazon.com/global-accelerator/latest/dg/tagging-in-global-accelerator.html)
in the *Global Accelerator Developer Guide*.

### Usage

    globalaccelerator_tag_resource(ResourceArn, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="globalaccelerator_tag_resource_:_ResourceArn">ResourceArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the Global
Accelerator resource to add tags to. An ARN uniquely identifies a
resource.</p></td>
</tr>
<tr class="even">
<td><code id="globalaccelerator_tag_resource_:_Tags">Tags</code></td>
<td><p>[required] The tags to add to a resource. A tag consists of a key
and a value that you define.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$tag_resource(
      ResourceArn = "string",
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )
