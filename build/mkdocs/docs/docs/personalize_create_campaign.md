<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>personalize_create_campaign</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a campaign that deploys a solution version

### Description

Creates a campaign that deploys a solution version. When a client calls
the
[GetRecommendations](https://docs.aws.amazon.com/personalize/latest/dg/API_RS_GetRecommendations.html)
and
[GetPersonalizedRanking](https://docs.aws.amazon.com/personalize/latest/dg/API_RS_GetPersonalizedRanking.html)
APIs, a campaign is specified in the request.

**Minimum Provisioned TPS and Auto-Scaling**

A transaction is a single `GetRecommendations` or
`GetPersonalizedRanking` call. Transactions per second (TPS) is the
throughput and unit of billing for Amazon Personalize. The minimum
provisioned TPS (`minProvisionedTPS`) specifies the baseline throughput
provisioned by Amazon Personalize, and thus, the minimum billing charge.

If your TPS increases beyond `minProvisionedTPS`, Amazon Personalize
auto-scales the provisioned capacity up and down, but never below
`minProvisionedTPS`. There's a short time delay while the capacity is
increased that might cause loss of transactions.

The actual TPS used is calculated as the average requests/second within
a 5-minute window. You pay for maximum of either the minimum provisioned
TPS or the actual TPS. We recommend starting with a low
`minProvisionedTPS`, track your usage using Amazon CloudWatch metrics,
and then increase the `minProvisionedTPS` as necessary.

**Status**

A campaign can be in one of the following states:

-   CREATE PENDING \\ CREATE IN\_PROGRESS \\ ACTIVE -or- CREATE FAILED

-   DELETE PENDING \\ DELETE IN\_PROGRESS

To get the campaign status, call `describe_campaign`.

Wait until the `status` of the campaign is `ACTIVE` before asking the
campaign for recommendations.

**Related APIs**

-   `list_campaigns`

-   `describe_campaign`

-   `update_campaign`

-   `delete_campaign`

### Usage

    personalize_create_campaign(name, solutionVersionArn, minProvisionedTPS,
      campaignConfig, tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="personalize_create_campaign_:_name">name</code></td>
<td><p>[required] A name for the new campaign. The campaign name must be
unique within your account.</p></td>
</tr>
<tr class="even">
<td><code
id="personalize_create_campaign_:_solutionVersionArn">solutionVersionArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the solution version
to deploy.</p></td>
</tr>
<tr class="odd">
<td><code
id="personalize_create_campaign_:_minProvisionedTPS">minProvisionedTPS</code></td>
<td><p>Specifies the requested minimum provisioned transactions
(recommendations) per second that Amazon Personalize will
support.</p></td>
</tr>
<tr class="even">
<td><code
id="personalize_create_campaign_:_campaignConfig">campaignConfig</code></td>
<td><p>The configuration details of a campaign.</p></td>
</tr>
<tr class="odd">
<td><code id="personalize_create_campaign_:_tags">tags</code></td>
<td><p>A list of tags to apply to the campaign.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      campaignArn = "string"
    )

### Request syntax

    svc$create_campaign(
      name = "string",
      solutionVersionArn = "string",
      minProvisionedTPS = 123,
      campaignConfig = list(
        itemExplorationConfig = list(
          "string"
        )
      ),
      tags = list(
        list(
          tagKey = "string",
          tagValue = "string"
        )
      )
    )
