<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>connectcampaignservice_list_tags_for_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## List tags for a resource

### Description

List tags for a resource.

### Usage

    connectcampaignservice_list_tags_for_resource(arn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="connectcampaignservice_list_tags_for_resource_:_arn">arn</code></td>
<td><p>[required]</p></td>
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
      arn = "string"
    )
