<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>personalize_update_campaign</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates a campaign by either deploying a new solution or changing the value of the campaign's minProvisionedTPS parameter

### Description

Updates a campaign by either deploying a new solution or changing the
value of the campaign's `minProvisionedTPS` parameter.

To update a campaign, the campaign status must be ACTIVE or CREATE
FAILED. Check the campaign status using the `describe_campaign`
operation.

You can still get recommendations from a campaign while an update is in
progress. The campaign will use the previous solution version and
campaign configuration to generate recommendations until the latest
campaign update status is `Active`.

For more information on campaigns, see `create_campaign`.

### Usage

    personalize_update_campaign(campaignArn, solutionVersionArn,
      minProvisionedTPS, campaignConfig)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="personalize_update_campaign_:_campaignArn">campaignArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the
campaign.</p></td>
</tr>
<tr class="even">
<td><code
id="personalize_update_campaign_:_solutionVersionArn">solutionVersionArn</code></td>
<td><p>The ARN of a new solution version to deploy.</p></td>
</tr>
<tr class="odd">
<td><code
id="personalize_update_campaign_:_minProvisionedTPS">minProvisionedTPS</code></td>
<td><p>Specifies the requested minimum provisioned transactions
(recommendations) per second that Amazon Personalize will
support.</p></td>
</tr>
<tr class="even">
<td><code
id="personalize_update_campaign_:_campaignConfig">campaignConfig</code></td>
<td><p>The configuration details of a campaign.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      campaignArn = "string"
    )

### Request syntax

    svc$update_campaign(
      campaignArn = "string",
      solutionVersionArn = "string",
      minProvisionedTPS = 123,
      campaignConfig = list(
        itemExplorationConfig = list(
          "string"
        )
      )
    )
