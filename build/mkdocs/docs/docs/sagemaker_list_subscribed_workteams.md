<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_list_subscribed_workteams</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets a list of the work teams that you are subscribed to in the Amazon Web Services Marketplace

### Description

Gets a list of the work teams that you are subscribed to in the Amazon
Web Services Marketplace. The list may be empty if no work team
satisfies the filter specified in the `NameContains` parameter.

### Usage

    sagemaker_list_subscribed_workteams(NameContains, NextToken, MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sagemaker_list_subscribed_workteams_:_NameContains">NameContains</code></td>
<td><p>A string in the work team name. This filter returns only work
teams whose name contains the specified string.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_list_subscribed_workteams_:_NextToken">NextToken</code></td>
<td><p>If the result of the previous
<code>list_subscribed_workteams</code> request was truncated, the
response includes a <code>NextToken</code>. To retrieve the next set of
labeling jobs, use the token in the next request.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_list_subscribed_workteams_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of work teams to return in each page of the
response.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      SubscribedWorkteams = list(
        list(
          WorkteamArn = "string",
          MarketplaceTitle = "string",
          SellerName = "string",
          MarketplaceDescription = "string",
          ListingId = "string"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_subscribed_workteams(
      NameContains = "string",
      NextToken = "string",
      MaxResults = 123
    )
