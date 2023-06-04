<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>pinpoint_list_tags_for_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves all the tags (keys and values) that are associated with an application, campaign, message template, or segment

### Description

Retrieves all the tags (keys and values) that are associated with an
application, campaign, message template, or segment.

### Usage

    pinpoint_list_tags_for_resource(ResourceArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="pinpoint_list_tags_for_resource_:_ResourceArn">ResourceArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the
resource.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      TagsModel = list(
        tags = list(
          "string"
        )
      )
    )

### Request syntax

    svc$list_tags_for_resource(
      ResourceArn = "string"
    )
