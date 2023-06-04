<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ram_untag_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Removes the specified tag key and value pairs from the specified resource share or managed permission

### Description

Removes the specified tag key and value pairs from the specified
resource share or managed permission.

### Usage

    ram_untag_resource(resourceShareArn, tagKeys, resourceArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ram_untag_resource_:_resourceShareArn">resourceShareArn</code></td>
<td><p>Specifies the <a
href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html">Amazon
Resource Name (ARN)</a> of the resource share that you want to remove
tags from. The tags are removed from the resource share, not the
resources in the resource share. You must specify either
<code>resourceShareArn</code>, or <code>resourceArn</code>, but not
both.</p></td>
</tr>
<tr class="even">
<td><code id="ram_untag_resource_:_tagKeys">tagKeys</code></td>
<td><p>[required] Specifies a list of one or more tag keys that you want
to remove.</p></td>
</tr>
<tr class="odd">
<td><code id="ram_untag_resource_:_resourceArn">resourceArn</code></td>
<td><p>Specifies the <a
href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html">Amazon
Resource Name (ARN)</a> of the managed permission that you want to
remove tags from. You must specify either <code>resourceArn</code>, or
<code>resourceShareArn</code>, but not both.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$untag_resource(
      resourceShareArn = "string",
      tagKeys = list(
        "string"
      ),
      resourceArn = "string"
    )
