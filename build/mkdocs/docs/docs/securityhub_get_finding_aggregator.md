<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>securityhub_get_finding_aggregator</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns the current finding aggregation configuration

### Description

Returns the current finding aggregation configuration.

### Usage

    securityhub_get_finding_aggregator(FindingAggregatorArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="securityhub_get_finding_aggregator_:_FindingAggregatorArn">FindingAggregatorArn</code></td>
<td><p>[required] The ARN of the finding aggregator to return details
for. To obtain the ARN, use
<code>list_finding_aggregators</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      FindingAggregatorArn = "string",
      FindingAggregationRegion = "string",
      RegionLinkingMode = "string",
      Regions = list(
        "string"
      )
    )

### Request syntax

    svc$get_finding_aggregator(
      FindingAggregatorArn = "string"
    )

### Examples

    ## Not run: 
    # The following example returns cross-Region aggregation details for the
    # requesting account.
    svc$get_finding_aggregator(
      FindingAggregatorArn = "arn:aws:securityhub:us-east-1:123456789012:findin..."
    )

    ## End(Not run)
