<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lookoutmetrics_get_anomaly_group</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns details about a group of anomalous metrics

### Description

Returns details about a group of anomalous metrics.

### Usage

    lookoutmetrics_get_anomaly_group(AnomalyGroupId, AnomalyDetectorArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="lookoutmetrics_get_anomaly_group_:_AnomalyGroupId">AnomalyGroupId</code></td>
<td><p>[required] The ID of the anomaly group.</p></td>
</tr>
<tr class="even">
<td><code
id="lookoutmetrics_get_anomaly_group_:_AnomalyDetectorArn">AnomalyDetectorArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the anomaly
detector.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      AnomalyGroup = list(
        StartTime = "string",
        EndTime = "string",
        AnomalyGroupId = "string",
        AnomalyGroupScore = 123.0,
        PrimaryMetricName = "string",
        MetricLevelImpactList = list(
          list(
            MetricName = "string",
            NumTimeSeries = 123,
            ContributionMatrix = list(
              DimensionContributionList = list(
                list(
                  DimensionName = "string",
                  DimensionValueContributionList = list(
                    list(
                      DimensionValue = "string",
                      ContributionScore = 123.0
                    )
                  )
                )
              )
            )
          )
        )
      )
    )

### Request syntax

    svc$get_anomaly_group(
      AnomalyGroupId = "string",
      AnomalyDetectorArn = "string"
    )
