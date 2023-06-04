<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>pinpointemail_list_tags_for_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieve a list of the tags (keys and values) that are associated with a specified resource

### Description

Retrieve a list of the tags (keys and values) that are associated with a
specified resource. A *tag* is a label that you optionally define and
associate with a resource in Amazon Pinpoint. Each tag consists of a
required *tag key* and an optional associated *tag value*. A tag key is
a general label that acts as a category for more specific tag values. A
tag value acts as a descriptor within a tag key.

### Usage

    pinpointemail_list_tags_for_resource(ResourceArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="pinpointemail_list_tags_for_resource_:_ResourceArn">ResourceArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the resource that
you want to retrieve tag information for.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )

### Request syntax

    svc$list_tags_for_resource(
      ResourceArn = "string"
    )
