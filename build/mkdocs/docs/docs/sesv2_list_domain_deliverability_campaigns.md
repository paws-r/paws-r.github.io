<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sesv2_list_domain_deliverability_campaigns</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieve deliverability data for all the campaigns that used a specific domain to send email during a specified time range

### Description

Retrieve deliverability data for all the campaigns that used a specific
domain to send email during a specified time range. This data is
available for a domain only if you enabled the Deliverability dashboard
for the domain.

### Usage

    sesv2_list_domain_deliverability_campaigns(StartDate, EndDate,
      SubscribedDomain, NextToken, PageSize)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sesv2_list_domain_deliverability_campaigns_:_StartDate">StartDate</code></td>
<td><p>[required] The first day that you want to obtain deliverability
data for.</p></td>
</tr>
<tr class="even">
<td><code
id="sesv2_list_domain_deliverability_campaigns_:_EndDate">EndDate</code></td>
<td><p>[required] The last day that you want to obtain deliverability
data for. This value has to be less than or equal to 30 days after the
value of the <code>StartDate</code> parameter.</p></td>
</tr>
<tr class="odd">
<td><code
id="sesv2_list_domain_deliverability_campaigns_:_SubscribedDomain">SubscribedDomain</code></td>
<td><p>[required] The domain to obtain deliverability data for.</p></td>
</tr>
<tr class="even">
<td><code
id="sesv2_list_domain_deliverability_campaigns_:_NextToken">NextToken</code></td>
<td><p>A token that’s returned from a previous call to the
<code>list_domain_deliverability_campaigns</code> operation. This token
indicates the position of a campaign in the list of campaigns.</p></td>
</tr>
<tr class="odd">
<td><code
id="sesv2_list_domain_deliverability_campaigns_:_PageSize">PageSize</code></td>
<td><p>The maximum number of results to include in response to a single
call to the <code>list_domain_deliverability_campaigns</code> operation.
If the number of results is larger than the number that you specify in
this parameter, the response includes a <code>NextToken</code> element,
which you can use to obtain additional results.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      DomainDeliverabilityCampaigns = list(
        list(
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
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_domain_deliverability_campaigns(
      StartDate = as.POSIXct(
        "2015-01-01"
      ),
      EndDate = as.POSIXct(
        "2015-01-01"
      ),
      SubscribedDomain = "string",
      NextToken = "string",
      PageSize = 123
    )
