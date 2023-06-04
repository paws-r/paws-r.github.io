<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>shield_tag_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Adds or updates tags for a resource in Shield

### Description

Adds or updates tags for a resource in Shield.

### Usage

    shield_tag_resource(ResourceARN, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="shield_tag_resource_:_ResourceARN">ResourceARN</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the resource that
you want to add or update tags for.</p></td>
</tr>
<tr class="even">
<td><code id="shield_tag_resource_:_Tags">Tags</code></td>
<td><p>[required] The tags that you want to modify or add to the
resource.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$tag_resource(
      ResourceARN = "string",
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )
