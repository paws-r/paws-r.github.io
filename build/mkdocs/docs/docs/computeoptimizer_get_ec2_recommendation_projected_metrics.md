<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>computeoptimizer_get_ec2_recommendation_projected_metrics</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns the projected utilization metrics of Amazon EC2 instance recommendations

### Description

Returns the projected utilization metrics of Amazon EC2 instance
recommendations.

The `Cpu` and `Memory` metrics are the only projected utilization
metrics returned when you run this action. Additionally, the `Memory`
metric is returned only for resources that have the unified CloudWatch
agent installed on them. For more information, see [Enabling Memory
Utilization with the CloudWatch
Agent](https://docs.aws.amazon.com/compute-optimizer/latest/ug/metrics.html#cw-agent).

### Usage

    computeoptimizer_get_ec2_recommendation_projected_metrics(instanceArn,
      stat, period, startTime, endTime, recommendationPreferences)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="computeoptimizer_get_ec2_recommendation_projected_metrics_:_instanceArn">instanceArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the instances for
which to return recommendation projected metrics.</p></td>
</tr>
<tr class="even">
<td><code
id="computeoptimizer_get_ec2_recommendation_projected_metrics_:_stat">stat</code></td>
<td><p>[required] The statistic of the projected metrics.</p></td>
</tr>
<tr class="odd">
<td><code
id="computeoptimizer_get_ec2_recommendation_projected_metrics_:_period">period</code></td>
<td><p>[required] The granularity, in seconds, of the projected metrics
data points.</p></td>
</tr>
<tr class="even">
<td><code
id="computeoptimizer_get_ec2_recommendation_projected_metrics_:_startTime">startTime</code></td>
<td><p>[required] The timestamp of the first projected metrics data
point to return.</p></td>
</tr>
<tr class="odd">
<td><code
id="computeoptimizer_get_ec2_recommendation_projected_metrics_:_endTime">endTime</code></td>
<td><p>[required] The timestamp of the last projected metrics data point
to return.</p></td>
</tr>
<tr class="even">
<td><code
id="computeoptimizer_get_ec2_recommendation_projected_metrics_:_recommendationPreferences">recommendationPreferences</code></td>
<td><p>An object to specify the preferences for the Amazon EC2
recommendation projected metrics to return in the response.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      recommendedOptionProjectedMetrics = list(
        list(
          recommendedInstanceType = "string",
          rank = 123,
          projectedMetrics = list(
            list(
              name = "Cpu"|"Memory"|"EBS_READ_OPS_PER_SECOND"|"EBS_WRITE_OPS_PER_SECOND"|"EBS_READ_BYTES_PER_SECOND"|"EBS_WRITE_BYTES_PER_SECOND"|"DISK_READ_OPS_PER_SECOND"|"DISK_WRITE_OPS_PER_SECOND"|"DISK_READ_BYTES_PER_SECOND"|"DISK_WRITE_BYTES_PER_SECOND"|"NETWORK_IN_BYTES_PER_SECOND"|"NETWORK_OUT_BYTES_PER_SECOND"|"NETWORK_PACKETS_IN_PER_SECOND"|"NETWORK_PACKETS_OUT_PER_SECOND",
              timestamps = list(
                as.POSIXct(
                  "2015-01-01"
                )
              ),
              values = list(
                123.0
              )
            )
          )
        )
      )
    )

### Request syntax

    svc$get_ec2_recommendation_projected_metrics(
      instanceArn = "string",
      stat = "Maximum"|"Average",
      period = 123,
      startTime = as.POSIXct(
        "2015-01-01"
      ),
      endTime = as.POSIXct(
        "2015-01-01"
      ),
      recommendationPreferences = list(
        cpuVendorArchitectures = list(
          "AWS_ARM64"|"CURRENT"
        )
      )
    )
