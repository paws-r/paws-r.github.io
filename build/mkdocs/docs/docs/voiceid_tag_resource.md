<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>voiceid_tag_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Tags a Voice ID resource with the provided list of tags

### Description

Tags a Voice ID resource with the provided list of tags.

### Usage

    voiceid_tag_resource(ResourceArn, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="voiceid_tag_resource_:_ResourceArn">ResourceArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the Voice ID
resource you want to tag.</p></td>
</tr>
<tr class="even">
<td><code id="voiceid_tag_resource_:_Tags">Tags</code></td>
<td><p>[required] The list of tags to assign to the specified
resource.</p></td>
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
