<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>connectcampaignservice_stop_campaign</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Stops a campaign for the specified Amazon Connect account

### Description

Stops a campaign for the specified Amazon Connect account.

### Usage

    connectcampaignservice_stop_campaign(id)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="connectcampaignservice_stop_campaign_:_id">id</code></td>
<td><p>[required]</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$stop_campaign(
      id = "string"
    )
