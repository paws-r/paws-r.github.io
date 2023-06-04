<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>connectcampaignservice_tag_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Tag a resource

### Description

Tag a resource.

### Usage

    connectcampaignservice_tag_resource(arn, tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="connectcampaignservice_tag_resource_:_arn">arn</code></td>
<td><p>[required]</p></td>
</tr>
<tr class="even">
<td><code
id="connectcampaignservice_tag_resource_:_tags">tags</code></td>
<td><p>[required]</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$tag_resource(
      arn = "string",
      tags = list(
        "string"
      )
    )
