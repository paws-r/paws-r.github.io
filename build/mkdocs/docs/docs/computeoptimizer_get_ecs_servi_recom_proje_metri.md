<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>computeoptimizer_get_ecs_service_recommendation_projected_metrics</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns the projected metrics of Amazon ECS service recommendations

### Description

Returns the projected metrics of Amazon ECS service recommendations.

### Usage

    computeoptimizer_get_ecs_service_recommendation_projected_metrics(
      serviceArn, stat, period, startTime, endTime)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="computeoptimizer_get_ecs_service_recommendation_projected_metrics_:_serviceArn">serviceArn</code></td>
<td><p>[required] The ARN that identifies the Amazon ECS service.</p>
<p>The following is the format of the ARN:</p>
<p><code>arn:aws:ecs:region:aws_account_id:service/cluster-name/service-name</code></p></td>
</tr>
<tr class="even">
<td><code
id="computeoptimizer_get_ecs_service_recommendation_projected_metrics_:_stat">stat</code></td>
<td><p>[required] The statistic of the projected metrics.</p></td>
</tr>
<tr class="odd">
<td><code
id="computeoptimizer_get_ecs_service_recommendation_projected_metrics_:_period">period</code></td>
<td><p>[required] The granularity, in seconds, of the projected metrics
data points.</p></td>
</tr>
<tr class="even">
<td><code
id="computeoptimizer_get_ecs_service_recommendation_projected_metrics_:_startTime">startTime</code></td>
<td><p>[required] The timestamp of the first projected metrics data
point to return.</p></td>
</tr>
<tr class="odd">
<td><code
id="computeoptimizer_get_ecs_service_recommendation_projected_metrics_:_endTime">endTime</code></td>
<td><p>[required] The timestamp of the last projected metrics data point
to return.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      recommendedOptionProjectedMetrics = list(
        list(
          recommendedCpuUnits = 123,
          recommendedMemorySize = 123,
          projectedMetrics = list(
            list(
              name = "Cpu"|"Memory",
              timestamps = list(
                as.POSIXct(
                  "2015-01-01"
                )
              ),
              upperBoundValues = list(
                123.0
              ),
              lowerBoundValues = list(
                123.0
              )
            )
          )
        )
      )
    )

### Request syntax

    svc$get_ecs_service_recommendation_projected_metrics(
      serviceArn = "string",
      stat = "Maximum"|"Average",
      period = 123,
      startTime = as.POSIXct(
        "2015-01-01"
      ),
      endTime = as.POSIXct(
        "2015-01-01"
      )
    )
