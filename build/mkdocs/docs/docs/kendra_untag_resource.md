<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>kendra_untag_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Removes a tag from an index, FAQ, or a data source

### Description

Removes a tag from an index, FAQ, or a data source.

### Usage

    kendra_untag_resource(ResourceARN, TagKeys)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="kendra_untag_resource_:_ResourceARN">ResourceARN</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the index, FAQ, or
data source to remove the tag from.</p></td>
</tr>
<tr class="even">
<td><code id="kendra_untag_resource_:_TagKeys">TagKeys</code></td>
<td><p>[required] A list of tag keys to remove from the index, FAQ, or
data source. If a tag key does not exist on the resource, it is
ignored.</p></td>
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
