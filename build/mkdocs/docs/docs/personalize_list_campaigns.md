<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>personalize_list_campaigns</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a list of campaigns that use the given solution

### Description

Returns a list of campaigns that use the given solution. When a solution
is not specified, all the campaigns associated with the account are
listed. The response provides the properties for each campaign,
including the Amazon Resource Name (ARN). For more information on
campaigns, see `create_campaign`.

### Usage

    personalize_list_campaigns(solutionArn, nextToken, maxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="personalize_list_campaigns_:_solutionArn">solutionArn</code></td>
<td><p>The Amazon Resource Name (ARN) of the solution to list the
campaigns for. When a solution is not specified, all the campaigns
associated with the account are listed.</p></td>
</tr>
<tr class="even">
<td><code
id="personalize_list_campaigns_:_nextToken">nextToken</code></td>
<td><p>A token returned from the previous call to
<code>list_campaigns</code> for getting the next set of campaigns (if
they exist).</p></td>
</tr>
<tr class="odd">
<td><code
id="personalize_list_campaigns_:_maxResults">maxResults</code></td>
<td><p>The maximum number of campaigns to return.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      campaigns = list(
        list(
          name = "string",
          campaignArn = "string",
          status = "string",
          creationDateTime = as.POSIXct(
            "2015-01-01"
          ),
          lastUpdatedDateTime = as.POSIXct(
            "2015-01-01"
          ),
          failureReason = "string"
        )
      ),
      nextToken = "string"
    )

### Request syntax

    svc$list_campaigns(
      solutionArn = "string",
      nextToken = "string",
      maxResults = 123
    )
