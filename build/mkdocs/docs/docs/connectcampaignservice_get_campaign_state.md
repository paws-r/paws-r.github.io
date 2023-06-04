<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>connectcampaignservice_get_campaign_state</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Get state of a campaign for the specified Amazon Connect account

### Description

Get state of a campaign for the specified Amazon Connect account.

### Usage

    connectcampaignservice_get_campaign_state(id)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="connectcampaignservice_get_campaign_state_:_id">id</code></td>
<td><p>[required]</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      state = "Initialized"|"Running"|"Paused"|"Stopped"|"Failed"
    )

### Request syntax

    svc$get_campaign_state(
      id = "string"
    )
