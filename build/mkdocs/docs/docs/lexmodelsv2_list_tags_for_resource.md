<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lexmodelsv2_list_tags_for_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets a list of tags associated with a resource

### Description

Gets a list of tags associated with a resource. Only bots, bot aliases,
and bot channels can have tags associated with them.

### Usage

    lexmodelsv2_list_tags_for_resource(resourceARN)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="lexmodelsv2_list_tags_for_resource_:_resourceARN">resourceARN</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the resource to get
a list of tags for.</p></td>
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
      resourceARN = "string"
    )
