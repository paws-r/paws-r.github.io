<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>voiceid_untag_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Removes specified tags from a specified Amazon Connect Voice ID resource

### Description

Removes specified tags from a specified Amazon Connect Voice ID
resource.

### Usage

    voiceid_untag_resource(ResourceArn, TagKeys)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="voiceid_untag_resource_:_ResourceArn">ResourceArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the Voice ID
resource you want to remove tags from.</p></td>
</tr>
<tr class="even">
<td><code id="voiceid_untag_resource_:_TagKeys">TagKeys</code></td>
<td><p>[required] The list of tag keys you want to remove from the
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
