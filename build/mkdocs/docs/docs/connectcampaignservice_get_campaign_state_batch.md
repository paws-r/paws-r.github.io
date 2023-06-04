<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>connectcampaignservice_get_campaign_state_batch</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Get state of campaigns for the specified Amazon Connect account

### Description

Get state of campaigns for the specified Amazon Connect account.

### Usage

    connectcampaignservice_get_campaign_state_batch(campaignIds)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="connectcampaignservice_get_campaign_state_batch_:_campaignIds">campaignIds</code></td>
<td><p>[required]</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      failedRequests = list(
        list(
          campaignId = "string",
          failureCode = "ResourceNotFound"|"UnknownError"
        )
      ),
      successfulRequests = list(
        list(
          campaignId = "string",
          state = "Initialized"|"Running"|"Paused"|"Stopped"|"Failed"
        )
      )
    )

### Request syntax

    svc$get_campaign_state_batch(
      campaignIds = list(
        "string"
      )
    )
