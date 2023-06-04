<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>personalize_delete_campaign</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Removes a campaign by deleting the solution deployment

### Description

Removes a campaign by deleting the solution deployment. The solution
that the campaign is based on is not deleted and can be redeployed when
needed. A deleted campaign can no longer be specified in a
[GetRecommendations](https://docs.aws.amazon.com/personalize/latest/dg/API_RS_GetRecommendations.html)
request. For information on creating campaigns, see `create_campaign`.

### Usage

    personalize_delete_campaign(campaignArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="personalize_delete_campaign_:_campaignArn">campaignArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the campaign to
delete.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_campaign(
      campaignArn = "string"
    )
