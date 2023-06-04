<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>applicationinsights_list_log_pattern_sets</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists the log pattern sets in the specific application

### Description

Lists the log pattern sets in the specific application.

### Usage

    applicationinsights_list_log_pattern_sets(ResourceGroupName, MaxResults,
      NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="applicationinsights_list_log_pattern_sets_:_ResourceGroupName">ResourceGroupName</code></td>
<td><p>[required] The name of the resource group.</p></td>
</tr>
<tr class="even">
<td><code
id="applicationinsights_list_log_pattern_sets_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to return in a single call. To
retrieve the remaining results, make another call with the returned
<code>NextToken</code> value.</p></td>
</tr>
<tr class="odd">
<td><code
id="applicationinsights_list_log_pattern_sets_:_NextToken">NextToken</code></td>
<td><p>The token to request the next page of results.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ResourceGroupName = "string",
      LogPatternSets = list(
        "string"
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_log_pattern_sets(
      ResourceGroupName = "string",
      MaxResults = 123,
      NextToken = "string"
    )
