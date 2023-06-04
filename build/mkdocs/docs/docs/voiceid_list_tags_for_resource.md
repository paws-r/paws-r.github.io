<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>voiceid_list_tags_for_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists all tags associated with a specified Voice ID resource

### Description

Lists all tags associated with a specified Voice ID resource.

### Usage

    voiceid_list_tags_for_resource(ResourceArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="voiceid_list_tags_for_resource_:_ResourceArn">ResourceArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the Voice ID
resource for which you want to list the tags.</p></td>
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
