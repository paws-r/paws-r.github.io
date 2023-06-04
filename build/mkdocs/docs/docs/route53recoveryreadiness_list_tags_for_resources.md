<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>route53recoveryreadiness_list_tags_for_resources</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists the tags for a resource

### Description

Lists the tags for a resource.

### Usage

    route53recoveryreadiness_list_tags_for_resources(ResourceArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="route53recoveryreadiness_list_tags_for_resources_:_ResourceArn">ResourceArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) for a
resource.</p></td>
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

    svc$list_tags_for_resources(
      ResourceArn = "string"
    )
