<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>personalize_describe_metric_attribution</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes a metric attribution

### Description

Describes a metric attribution.

### Usage

    personalize_describe_metric_attribution(metricAttributionArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="personalize_describe_metric_attribution_:_metricAttributionArn">metricAttributionArn</code></td>
<td><p>[required] The metric attribution's Amazon Resource Name
(ARN).</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      metricAttribution = list(
        name = "string",
        metricAttributionArn = "string",
        datasetGroupArn = "string",
        metricsOutputConfig = list(
          s3DataDestination = list(
            path = "string",
            kmsKeyArn = "string"
          ),
          roleArn = "string"
        ),
        status = "string",
        creationDateTime = as.POSIXct(
          "2015-01-01"
        ),
        lastUpdatedDateTime = as.POSIXct(
          "2015-01-01"
        ),
        failureReason = "string"
      )
    )

### Request syntax

    svc$describe_metric_attribution(
      metricAttributionArn = "string"
    )
