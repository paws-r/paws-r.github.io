<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lexmodelbuildingservice_untag_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Removes tags from a bot, bot alias or bot channel

### Description

Removes tags from a bot, bot alias or bot channel.

### Usage

    lexmodelbuildingservice_untag_resource(resourceArn, tagKeys)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="lexmodelbuildingservice_untag_resource_:_resourceArn">resourceArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the resource to
remove the tags from.</p></td>
</tr>
<tr class="even">
<td><code
id="lexmodelbuildingservice_untag_resource_:_tagKeys">tagKeys</code></td>
<td><p>[required] A list of tag keys to remove from the resource. If a
tag key does not exist on the resource, it is ignored.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$untag_resource(
      resourceArn = "string",
      tagKeys = list(
        "string"
      )
    )
