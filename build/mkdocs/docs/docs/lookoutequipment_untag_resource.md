<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lookoutequipment_untag_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Removes a specific tag from a given resource

### Description

Removes a specific tag from a given resource. The tag is specified by
its key.

### Usage

    lookoutequipment_untag_resource(ResourceArn, TagKeys)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="lookoutequipment_untag_resource_:_ResourceArn">ResourceArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the resource to
which the tag is currently associated.</p></td>
</tr>
<tr class="even">
<td><code
id="lookoutequipment_untag_resource_:_TagKeys">TagKeys</code></td>
<td><p>[required] Specifies the key of the tag to be removed from a
specified resource.</p></td>
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
