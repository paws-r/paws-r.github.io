<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>personalize_list_tags_for_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Get a list of tags attached to a resource

### Description

Get a list of tags attached to a resource.

### Usage

    personalize_list_tags_for_resource(resourceArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="personalize_list_tags_for_resource_:_resourceArn">resourceArn</code></td>
<td><p>[required] The resource's Amazon Resource Name.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      tags = list(
        list(
          tagKey = "string",
          tagValue = "string"
        )
      )
    )

### Request syntax

    svc$list_tags_for_resource(
      resourceArn = "string"
    )
