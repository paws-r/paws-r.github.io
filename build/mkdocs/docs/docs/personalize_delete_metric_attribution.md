<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>personalize_delete_metric_attribution</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a metric attribution

### Description

Deletes a metric attribution.

### Usage

    personalize_delete_metric_attribution(metricAttributionArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="personalize_delete_metric_attribution_:_metricAttributionArn">metricAttributionArn</code></td>
<td><p>[required] The metric attribution's Amazon Resource Name
(ARN).</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_metric_attribution(
      metricAttributionArn = "string"
    )
