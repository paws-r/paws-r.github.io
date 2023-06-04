<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>connectcampaignservice_untag_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Untag a resource

### Description

Untag a resource.

### Usage

    connectcampaignservice_untag_resource(arn, tagKeys)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="connectcampaignservice_untag_resource_:_arn">arn</code></td>
<td><p>[required]</p></td>
</tr>
<tr class="even">
<td><code
id="connectcampaignservice_untag_resource_:_tagKeys">tagKeys</code></td>
<td><p>[required]</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$untag_resource(
      arn = "string",
      tagKeys = list(
        "string"
      )
    )
