<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>timestreamwrite_list_tags_for_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists all tags on a Timestream resource

### Description

Lists all tags on a Timestream resource.

### Usage

    timestreamwrite_list_tags_for_resource(ResourceARN)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="timestreamwrite_list_tags_for_resource_:_ResourceARN">ResourceARN</code></td>
<td><p>[required] The Timestream resource with tags to be listed. This
value is an Amazon Resource Name (ARN).</p></td>
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
      ResourceARN = "string"
    )
