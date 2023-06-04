<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>inspector2_list_tags_for_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists all tags attached to a given resource

### Description

Lists all tags attached to a given resource.

### Usage

    inspector2_list_tags_for_resource(resourceArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="inspector2_list_tags_for_resource_:_resourceArn">resourceArn</code></td>
<td><p>[required] The Amazon resource number (ARN) of the resource to
list tags of.</p></td>
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
