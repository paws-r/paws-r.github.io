<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>kendra_tag_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Adds the specified tag to the specified index, FAQ, or data source resource

### Description

Adds the specified tag to the specified index, FAQ, or data source
resource. If the tag already exists, the existing value is replaced with
the new value.

### Usage

    kendra_tag_resource(ResourceARN, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="kendra_tag_resource_:_ResourceARN">ResourceARN</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the index, FAQ, or
data source to tag.</p></td>
</tr>
<tr class="even">
<td><code id="kendra_tag_resource_:_Tags">Tags</code></td>
<td><p>[required] A list of tag keys to add to the index, FAQ, or data
source. If a tag already exists, the existing value is replaced with the
new value.</p></td>
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
