<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>personalize_update_metric_attribution</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates a metric attribution

### Description

Updates a metric attribution.

### Usage

    personalize_update_metric_attribution(addMetrics, removeMetrics,
      metricsOutputConfig, metricAttributionArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="personalize_update_metric_attribution_:_addMetrics">addMetrics</code></td>
<td><p>Add new metric attributes to the metric attribution.</p></td>
</tr>
<tr class="even">
<td><code
id="personalize_update_metric_attribution_:_removeMetrics">removeMetrics</code></td>
<td><p>Remove metric attributes from the metric attribution.</p></td>
</tr>
<tr class="odd">
<td><code
id="personalize_update_metric_attribution_:_metricsOutputConfig">metricsOutputConfig</code></td>
<td><p>An output config for the metric attribution.</p></td>
</tr>
<tr class="even">
<td><code
id="personalize_update_metric_attribution_:_metricAttributionArn">metricAttributionArn</code></td>
<td><p>The Amazon Resource Name (ARN) for the metric attribution to
update.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      metricAttributionArn = "string"
    )

### Request syntax

    svc$update_metric_attribution(
      addMetrics = list(
        list(
          eventType = "string",
          metricName = "string",
          expression = "string"
        )
      ),
      removeMetrics = list(
        "string"
      ),
      metricsOutputConfig = list(
        s3DataDestination = list(
          path = "string",
          kmsKeyArn = "string"
        ),
        roleArn = "string"
      ),
      metricAttributionArn = "string"
    )
