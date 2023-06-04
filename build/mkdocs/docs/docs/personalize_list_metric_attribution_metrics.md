<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>personalize_list_metric_attribution_metrics</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists the metrics for the metric attribution

### Description

Lists the metrics for the metric attribution.

### Usage

    personalize_list_metric_attribution_metrics(metricAttributionArn,
      nextToken, maxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="personalize_list_metric_attribution_metrics_:_metricAttributionArn">metricAttributionArn</code></td>
<td><p>The Amazon Resource Name (ARN) of the metric attribution to
retrieve attributes for.</p></td>
</tr>
<tr class="even">
<td><code
id="personalize_list_metric_attribution_metrics_:_nextToken">nextToken</code></td>
<td><p>Specify the pagination token from a previous request to retrieve
the next page of results.</p></td>
</tr>
<tr class="odd">
<td><code
id="personalize_list_metric_attribution_metrics_:_maxResults">maxResults</code></td>
<td><p>The maximum number of metrics to return in one page of
results.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      metrics = list(
        list(
          eventType = "string",
          metricName = "string",
          expression = "string"
        )
      ),
      nextToken = "string"
    )

### Request syntax

    svc$list_metric_attribution_metrics(
      metricAttributionArn = "string",
      nextToken = "string",
      maxResults = 123
    )
