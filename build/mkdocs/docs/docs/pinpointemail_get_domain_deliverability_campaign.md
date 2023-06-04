<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>pinpointemail_get_domain_deliverability_campaign</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieve all the deliverability data for a specific campaign

### Description

Retrieve all the deliverability data for a specific campaign. This data
is available for a campaign only if the campaign sent email by using a
domain that the Deliverability dashboard is enabled for
(`put_deliverability_dashboard_option` operation).

### Usage

    pinpointemail_get_domain_deliverability_campaign(CampaignId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="pinpointemail_get_domain_deliverability_campaign_:_CampaignId">CampaignId</code></td>
<td><p>[required] The unique identifier for the campaign. Amazon
Pinpoint automatically generates and assigns this identifier to a
campaign. This value is not the same as the campaign identifier that
Amazon Pinpoint assigns to campaigns that you create and manage by using
the Amazon Pinpoint API or the Amazon Pinpoint console.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      DomainDeliverabilityCampaign = list(
        CampaignId = "string",
        ImageUrl = "string",
        Subject = "string",
        FromAddress = "string",
        SendingIps = list(
          "string"
        ),
        FirstSeenDateTime = as.POSIXct(
          "2015-01-01"
        ),
        LastSeenDateTime = as.POSIXct(
          "2015-01-01"
        ),
        InboxCount = 123,
        SpamCount = 123,
        ReadRate = 123.0,
        DeleteRate = 123.0,
        ReadDeleteRate = 123.0,
        ProjectedVolume = 123,
        Esps = list(
          "string"
        )
      )
    )

### Request syntax

    svc$get_domain_deliverability_campaign(
      CampaignId = "string"
    )
