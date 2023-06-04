<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>pinpoint_get_campaign_activities</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves information about all the activities for a campaign

### Description

Retrieves information about all the activities for a campaign.

### Usage

    pinpoint_get_campaign_activities(ApplicationId, CampaignId, PageSize,
      Token)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="pinpoint_get_campaign_activities_:_ApplicationId">ApplicationId</code></td>
<td><p>[required] The unique identifier for the application. This
identifier is displayed as the <strong>Project ID</strong> on the Amazon
Pinpoint console.</p></td>
</tr>
<tr class="even">
<td><code
id="pinpoint_get_campaign_activities_:_CampaignId">CampaignId</code></td>
<td><p>[required] The unique identifier for the campaign.</p></td>
</tr>
<tr class="odd">
<td><code
id="pinpoint_get_campaign_activities_:_PageSize">PageSize</code></td>
<td><p>The maximum number of items to include in each page of a
paginated response. This parameter is not supported for application,
campaign, and journey metrics.</p></td>
</tr>
<tr class="even">
<td><code
id="pinpoint_get_campaign_activities_:_Token">Token</code></td>
<td><p>The NextToken string that specifies which page of results to
return in a paginated response.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ActivitiesResponse = list(
        Item = list(
          list(
            ApplicationId = "string",
            CampaignId = "string",
            End = "string",
            Id = "string",
            Result = "string",
            ScheduledStart = "string",
            Start = "string",
            State = "string",
            SuccessfulEndpointCount = 123,
            TimezonesCompletedCount = 123,
            TimezonesTotalCount = 123,
            TotalEndpointCount = 123,
            TreatmentId = "string",
            ExecutionMetrics = list(
              "string"
            )
          )
        ),
        NextToken = "string"
      )
    )

### Request syntax

    svc$get_campaign_activities(
      ApplicationId = "string",
      CampaignId = "string",
      PageSize = "string",
      Token = "string"
    )
