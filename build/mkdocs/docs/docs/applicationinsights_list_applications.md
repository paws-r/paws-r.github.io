<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>applicationinsights_list_applications</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists the IDs of the applications that you are monitoring

### Description

Lists the IDs of the applications that you are monitoring.

### Usage

    applicationinsights_list_applications(MaxResults, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="applicationinsights_list_applications_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to return in a single call. To
retrieve the remaining results, make another call with the returned
<code>NextToken</code> value.</p></td>
</tr>
<tr class="even">
<td><code
id="applicationinsights_list_applications_:_NextToken">NextToken</code></td>
<td><p>The token to request the next page of results.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ApplicationInfoList = list(
        list(
          ResourceGroupName = "string",
          LifeCycle = "string",
          OpsItemSNSTopicArn = "string",
          OpsCenterEnabled = TRUE|FALSE,
          CWEMonitorEnabled = TRUE|FALSE,
          Remarks = "string",
          AutoConfigEnabled = TRUE|FALSE,
          DiscoveryType = "RESOURCE_GROUP_BASED"|"ACCOUNT_BASED"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_applications(
      MaxResults = 123,
      NextToken = "string"
    )
