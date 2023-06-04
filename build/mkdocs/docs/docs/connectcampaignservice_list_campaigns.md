<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>connectcampaignservice_list_campaigns</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Provides summary information about the campaigns under the specified Amazon Connect account

### Description

Provides summary information about the campaigns under the specified
Amazon Connect account.

### Usage

    connectcampaignservice_list_campaigns(filters, maxResults, nextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="connectcampaignservice_list_campaigns_:_filters">filters</code></td>
<td></td>
</tr>
<tr class="even">
<td><code
id="connectcampaignservice_list_campaigns_:_maxResults">maxResults</code></td>
<td></td>
</tr>
<tr class="odd">
<td><code
id="connectcampaignservice_list_campaigns_:_nextToken">nextToken</code></td>
<td></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      campaignSummaryList = list(
        list(
          arn = "string",
          connectInstanceId = "string",
          id = "string",
          name = "string"
        )
      ),
      nextToken = "string"
    )

### Request syntax

    svc$list_campaigns(
      filters = list(
        instanceIdFilter = list(
          operator = "Eq",
          value = "string"
        )
      ),
      maxResults = 123,
      nextToken = "string"
    )
