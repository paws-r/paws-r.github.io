<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>pinpointemail_tag_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Add one or more tags (keys and values) to a specified resource

### Description

Add one or more tags (keys and values) to a specified resource. A
*tag* is a label that you optionally define and associate with a
resource in Amazon Pinpoint. Tags can help you categorize and manage
resources in different ways, such as by purpose, owner, environment, or
other criteria. A resource can have as many as 50 tags.

Each tag consists of a required *tag key* and an associated *tag value*,
both of which you define. A tag key is a general label that acts as a
category for more specific tag values. A tag value acts as a descriptor
within a tag key.

### Usage

    pinpointemail_tag_resource(ResourceArn, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="pinpointemail_tag_resource_:_ResourceArn">ResourceArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the resource that
you want to add one or more tags to.</p></td>
</tr>
<tr class="even">
<td><code id="pinpointemail_tag_resource_:_Tags">Tags</code></td>
<td><p>[required] A list of the tags that you want to add to the
resource. A tag consists of a required tag key (<code>Key</code>) and an
associated tag value (<code>Value</code>). The maximum length of a tag
key is 128 characters. The maximum length of a tag value is 256
characters.</p></td>
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
