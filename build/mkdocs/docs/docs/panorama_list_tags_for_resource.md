<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>panorama_list_tags_for_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a list of tags for a resource

### Description

Returns a list of tags for a resource.

### Usage

    panorama_list_tags_for_resource(ResourceArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="panorama_list_tags_for_resource_:_ResourceArn">ResourceArn</code></td>
<td><p>[required] The resource's ARN.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Tags = list(
        "string"
      )
    )

### Request syntax

    svc$list_tags_for_resource(
      ResourceArn = "string"
    )
