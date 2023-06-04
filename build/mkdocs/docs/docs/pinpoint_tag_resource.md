<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>pinpoint_tag_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Adds one or more tags (keys and values) to an application, campaign, message template, or segment

### Description

Adds one or more tags (keys and values) to an application, campaign,
message template, or segment.

### Usage

    pinpoint_tag_resource(ResourceArn, TagsModel)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="pinpoint_tag_resource_:_ResourceArn">ResourceArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the
resource.</p></td>
</tr>
<tr class="even">
<td><code id="pinpoint_tag_resource_:_TagsModel">TagsModel</code></td>
<td><p>[required]</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$tag_resource(
      ResourceArn = "string",
      TagsModel = list(
        tags = list(
          "string"
        )
      )
    )
