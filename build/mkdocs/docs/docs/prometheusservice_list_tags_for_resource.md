<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>prometheusservice_list_tags_for_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists the tags you have assigned to the resource

### Description

Lists the tags you have assigned to the resource.

### Usage

    prometheusservice_list_tags_for_resource(resourceArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="prometheusservice_list_tags_for_resource_:_resourceArn">resourceArn</code></td>
<td><p>[required] The ARN of the resource.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      tags = list(
        "string"
      )
    )

### Request syntax

    svc$list_tags_for_resource(
      resourceArn = "string"
    )
