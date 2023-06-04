<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>shield_untag_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Removes tags from a resource in Shield

### Description

Removes tags from a resource in Shield.

### Usage

    shield_untag_resource(ResourceARN, TagKeys)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="shield_untag_resource_:_ResourceARN">ResourceARN</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the resource that
you want to remove tags from.</p></td>
</tr>
<tr class="even">
<td><code id="shield_untag_resource_:_TagKeys">TagKeys</code></td>
<td><p>[required] The tag key for each tag that you want to remove from
the resource.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$untag_resource(
      ResourceARN = "string",
      TagKeys = list(
        "string"
      )
    )
