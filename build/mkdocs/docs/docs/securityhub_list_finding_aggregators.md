<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>securityhub_list_finding_aggregators</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## If finding aggregation is enabled, then ListFindingAggregators returns the ARN of the finding aggregator

### Description

If finding aggregation is enabled, then `list_finding_aggregators`
returns the ARN of the finding aggregator. You can run this operation
from any Region.

### Usage

    securityhub_list_finding_aggregators(NextToken, MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="securityhub_list_finding_aggregators_:_NextToken">NextToken</code></td>
<td><p>The token returned with the previous set of results. Identifies
the next set of results to return.</p></td>
</tr>
<tr class="even">
<td><code
id="securityhub_list_finding_aggregators_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to return. This operation currently
only returns a single result.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      FindingAggregators = list(
        list(
          FindingAggregatorArn = "string"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_finding_aggregators(
      NextToken = "string",
      MaxResults = 123
    )

### Examples

    ## Not run: 
    # The following example disables the specified control in the specified
    # security standard.
    svc$list_finding_aggregators()

    ## End(Not run)
