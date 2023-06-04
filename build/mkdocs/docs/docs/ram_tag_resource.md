<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ram_tag_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Adds the specified tag keys and values to a resource share or managed permission

### Description

Adds the specified tag keys and values to a resource share or managed
permission. If you choose a resource share, the tags are attached to
only the resource share, not to the resources that are in the resource
share.

The tags on a managed permission are the same for all versions of the
managed permission.

### Usage

    ram_tag_resource(resourceShareArn, tags, resourceArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ram_tag_resource_:_resourceShareArn">resourceShareArn</code></td>
<td><p>Specifies the <a
href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html">Amazon
Resource Name (ARN)</a> of the resource share that you want to add tags
to. You must specify <em>either</em> <code>resourceShareArn</code>, or
<code>resourceArn</code>, but not both.</p></td>
</tr>
<tr class="even">
<td><code id="ram_tag_resource_:_tags">tags</code></td>
<td><p>[required] A list of one or more tag key and value pairs. The tag
key must be present and not be an empty string. The tag value must be
present but can be an empty string.</p></td>
</tr>
<tr class="odd">
<td><code id="ram_tag_resource_:_resourceArn">resourceArn</code></td>
<td><p>Specifies the <a
href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html">Amazon
Resource Name (ARN)</a> of the managed permission that you want to add
tags to. You must specify <em>either</em> <code>resourceArn</code>, or
<code>resourceShareArn</code>, but not both.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$tag_resource(
      resourceShareArn = "string",
      tags = list(
        list(
          key = "string",
          value = "string"
        )
      ),
      resourceArn = "string"
    )
