<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>securityhub_delete_finding_aggregator</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a finding aggregator

### Description

Deletes a finding aggregator. When you delete the finding aggregator,
you stop finding aggregation.

When you stop finding aggregation, findings that were already aggregated
to the aggregation Region are still visible from the aggregation Region.
New findings and finding updates are not aggregated.

### Usage

    securityhub_delete_finding_aggregator(FindingAggregatorArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="securityhub_delete_finding_aggregator_:_FindingAggregatorArn">FindingAggregatorArn</code></td>
<td><p>[required] The ARN of the finding aggregator to delete. To obtain
the ARN, use <code>list_finding_aggregators</code>.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_finding_aggregator(
      FindingAggregatorArn = "string"
    )

### Examples

    ## Not run: 
    # The following example deletes a finding aggregator in Security Hub.
    # Deleting the finding aggregator stops cross-Region aggregation. This
    # operation produces no output.
    svc$delete_finding_aggregator(
      FindingAggregatorArn = "arn:aws:securityhub:us-east-1:123456789012:findin..."
    )

    ## End(Not run)
