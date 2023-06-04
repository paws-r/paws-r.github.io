<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>connectcampaignservice_delete_campaign</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a campaign from the specified Amazon Connect account

### Description

Deletes a campaign from the specified Amazon Connect account.

### Usage

    connectcampaignservice_delete_campaign(id)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="connectcampaignservice_delete_campaign_:_id">id</code></td>
<td><p>[required]</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_campaign(
      id = "string"
    )
