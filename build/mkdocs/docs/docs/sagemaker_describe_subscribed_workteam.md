<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_describe_subscribed_workteam</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets information about a work team provided by a vendor

### Description

Gets information about a work team provided by a vendor. It returns
details about the subscription with a vendor in the Amazon Web Services
Marketplace.

### Usage

    sagemaker_describe_subscribed_workteam(WorkteamArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sagemaker_describe_subscribed_workteam_:_WorkteamArn">WorkteamArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the subscribed work
team to describe.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      SubscribedWorkteam = list(
        WorkteamArn = "string",
        MarketplaceTitle = "string",
        SellerName = "string",
        MarketplaceDescription = "string",
        ListingId = "string"
      )
    )

### Request syntax

    svc$describe_subscribed_workteam(
      WorkteamArn = "string"
    )
