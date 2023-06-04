<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>personalize_describe_campaign</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes the given campaign, including its status

### Description

Describes the given campaign, including its status.

A campaign can be in one of the following states:

-   CREATE PENDING \\ CREATE IN\_PROGRESS \\ ACTIVE -or- CREATE FAILED

-   DELETE PENDING \\ DELETE IN\_PROGRESS

When the `status` is `⁠CREATE FAILED⁠`, the response includes the
`failureReason` key, which describes why.

For more information on campaigns, see `create_campaign`.

### Usage

    personalize_describe_campaign(campaignArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="personalize_describe_campaign_:_campaignArn">campaignArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the
campaign.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      campaign = list(
        name = "string",
        campaignArn = "string",
        solutionVersionArn = "string",
        minProvisionedTPS = 123,
        campaignConfig = list(
          itemExplorationConfig = list(
            "string"
          )
        ),
        status = "string",
        failureReason = "string",
        creationDateTime = as.POSIXct(
          "2015-01-01"
        ),
        lastUpdatedDateTime = as.POSIXct(
          "2015-01-01"
        ),
        latestCampaignUpdate = list(
          solutionVersionArn = "string",
          minProvisionedTPS = 123,
          campaignConfig = list(
            itemExplorationConfig = list(
              "string"
            )
          ),
          status = "string",
          failureReason = "string",
          creationDateTime = as.POSIXct(
            "2015-01-01"
          ),
          lastUpdatedDateTime = as.POSIXct(
            "2015-01-01"
          )
        )
      )
    )

### Request syntax

    svc$describe_campaign(
      campaignArn = "string"
    )
