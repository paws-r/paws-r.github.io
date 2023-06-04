<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>pinpoint_untag_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Removes one or more tags (keys and values) from an application, campaign, message template, or segment

### Description

Removes one or more tags (keys and values) from an application,
campaign, message template, or segment.

### Usage

    pinpoint_untag_resource(ResourceArn, TagKeys)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="pinpoint_untag_resource_:_ResourceArn">ResourceArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the
resource.</p></td>
</tr>
<tr class="even">
<td><code id="pinpoint_untag_resource_:_TagKeys">TagKeys</code></td>
<td><p>[required] The key of the tag to remove from the resource. To
remove multiple tags, append the tagKeys parameter and argument for each
additional tag to remove, separated by an ampersand (&amp;).</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$untag_resource(
      ResourceArn = "string",
      TagKeys = list(
        "string"
      )
    )
