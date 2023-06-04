<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lexmodelbuildingservice_tag_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Adds the specified tags to the specified resource

### Description

Adds the specified tags to the specified resource. If a tag key already
exists, the existing value is replaced with the new value.

### Usage

    lexmodelbuildingservice_tag_resource(resourceArn, tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="lexmodelbuildingservice_tag_resource_:_resourceArn">resourceArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the bot, bot alias,
or bot channel to tag.</p></td>
</tr>
<tr class="even">
<td><code
id="lexmodelbuildingservice_tag_resource_:_tags">tags</code></td>
<td><p>[required] A list of tag keys to add to the resource. If a tag
key already exists, the existing value is replaced with the new
value.</p></td>
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
