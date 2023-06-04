<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>globalaccelerator_untag_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Remove tags from a Global Accelerator resource

### Description

Remove tags from a Global Accelerator resource. When you specify a tag
key, the action removes both that key and its associated value. The
operation succeeds even if you attempt to remove tags from an
accelerator that was already removed.

For more information, see [Tagging in Global
Accelerator](https://docs.aws.amazon.com/global-accelerator/latest/dg/tagging-in-global-accelerator.html)
in the *Global Accelerator Developer Guide*.

### Usage

    globalaccelerator_untag_resource(ResourceArn, TagKeys)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="globalaccelerator_untag_resource_:_ResourceArn">ResourceArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the Global
Accelerator resource to remove tags from. An ARN uniquely identifies a
resource.</p></td>
</tr>
<tr class="even">
<td><code
id="globalaccelerator_untag_resource_:_TagKeys">TagKeys</code></td>
<td><p>[required] The tag key pairs that you want to remove from the
specified resources.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$untag_resource(
      ResourceArn = "string",
      TagKeys = list(
        "string"
      )
    )
