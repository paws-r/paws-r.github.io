<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>guardduty_list_tags_for_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists tags for a resource

### Description

Lists tags for a resource. Tagging is currently supported for detectors,
finding filters, IP sets, and threat intel sets, with a limit of 50 tags
per resource. When invoked, this operation returns all assigned tags for
a given resource.

### Usage

    guardduty_list_tags_for_resource(ResourceArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="guardduty_list_tags_for_resource_:_ResourceArn">ResourceArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) for the given GuardDuty
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

    svc$list_tags_for_resource(
      ResourceArn = "string"
    )
