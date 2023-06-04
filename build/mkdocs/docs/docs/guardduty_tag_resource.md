<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>guardduty_tag_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Adds tags to a resource

### Description

Adds tags to a resource.

### Usage

    guardduty_tag_resource(ResourceArn, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="guardduty_tag_resource_:_ResourceArn">ResourceArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) for the GuardDuty
resource to apply a tag to.</p></td>
</tr>
<tr class="even">
<td><code id="guardduty_tag_resource_:_Tags">Tags</code></td>
<td><p>[required] The tags to be added to a resource.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$tag_resource(
      ResourceArn = "string",
      Tags = list(
        "string"
      )
    )
