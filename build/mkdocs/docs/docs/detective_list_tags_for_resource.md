<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>detective_list_tags_for_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns the tag values that are assigned to a behavior graph

### Description

Returns the tag values that are assigned to a behavior graph.

### Usage

    detective_list_tags_for_resource(ResourceArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="detective_list_tags_for_resource_:_ResourceArn">ResourceArn</code></td>
<td><p>[required] The ARN of the behavior graph for which to retrieve
the tag values.</p></td>
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
