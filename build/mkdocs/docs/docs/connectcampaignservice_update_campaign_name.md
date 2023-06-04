<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>connectcampaignservice_update_campaign_name</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates the name of a campaign

### Description

Updates the name of a campaign. This API is idempotent.

### Usage

    connectcampaignservice_update_campaign_name(id, name)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="connectcampaignservice_update_campaign_name_:_id">id</code></td>
<td><p>[required]</p></td>
</tr>
<tr class="even">
<td><code
id="connectcampaignservice_update_campaign_name_:_name">name</code></td>
<td><p>[required]</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$update_campaign_name(
      id = "string",
      name = "string"
    )
