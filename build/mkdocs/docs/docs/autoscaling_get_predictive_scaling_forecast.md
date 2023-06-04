<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>autoscaling_get_predictive_scaling_forecast</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves the forecast data for a predictive scaling policy

### Description

Retrieves the forecast data for a predictive scaling policy.

Load forecasts are predictions of the hourly load values using
historical load data from CloudWatch and an analysis of historical
trends. Capacity forecasts are represented as predicted values for the
minimum capacity that is needed on an hourly basis, based on the hourly
load forecast.

A minimum of 24 hours of data is required to create the initial
forecasts. However, having a full 14 days of historical data results in
more accurate forecasts.

For more information, see [Predictive scaling for Amazon EC2 Auto
Scaling](https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-predictive-scaling.html)
in the *Amazon EC2 Auto Scaling User Guide*.

### Usage

    autoscaling_get_predictive_scaling_forecast(AutoScalingGroupName,
      PolicyName, StartTime, EndTime)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="autoscaling_get_predictive_scaling_forecast_:_AutoScalingGroupName">AutoScalingGroupName</code></td>
<td><p>[required] The name of the Auto Scaling group.</p></td>
</tr>
<tr class="even">
<td><code
id="autoscaling_get_predictive_scaling_forecast_:_PolicyName">PolicyName</code></td>
<td><p>[required] The name of the policy.</p></td>
</tr>
<tr class="odd">
<td><code
id="autoscaling_get_predictive_scaling_forecast_:_StartTime">StartTime</code></td>
<td><p>[required] The inclusive start time of the time range for the
forecast data to get. At most, the date and time can be one year before
the current date and time.</p></td>
</tr>
<tr class="even">
<td><code
id="autoscaling_get_predictive_scaling_forecast_:_EndTime">EndTime</code></td>
<td><p>[required] The exclusive end time of the time range for the
forecast data to get. The maximum time duration between the start and
end time is 30 days.</p>
<p>Although this parameter can accept a date and time that is more than
two days in the future, the availability of forecast data has limits.
Amazon EC2 Auto Scaling only issues forecasts for periods of two days in
advance.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      LoadForecast = list(
        list(
          Timestamps = list(
            as.POSIXct(
              "2015-01-01"
            )
          ),
          Values = list(
            123.0
          ),
          MetricSpecification = list(
            TargetValue = 123.0,
            PredefinedMetricPairSpecification = list(
              PredefinedMetricType = "ASGCPUUtilization"|"ASGNetworkIn"|"ASGNetworkOut"|"ALBRequestCount",
              ResourceLabel = "string"
            ),
            PredefinedScalingMetricSpecification = list(
              PredefinedMetricType = "ASGAverageCPUUtilization"|"ASGAverageNetworkIn"|"ASGAverageNetworkOut"|"ALBRequestCountPerTarget",
              ResourceLabel = "string"
            ),
            PredefinedLoadMetricSpecification = list(
              PredefinedMetricType = "ASGTotalCPUUtilization"|"ASGTotalNetworkIn"|"ASGTotalNetworkOut"|"ALBTargetGroupRequestCount",
              ResourceLabel = "string"
            ),
            CustomizedScalingMetricSpecification = list(
              MetricDataQueries = list(
                list(
                  Id = "string",
                  Expression = "string",
                  MetricStat = list(
                    Metric = list(
                      Namespace = "string",
                      MetricName = "string",
                      Dimensions = list(
                        list(
                          Name = "string",
                          Value = "string"
                        )
                      )
                    ),
                    Stat = "string",
                    Unit = "string"
                  ),
                  Label = "string",
                  ReturnData = TRUE|FALSE
                )
              )
            ),
            CustomizedLoadMetricSpecification = list(
              MetricDataQueries = list(
                list(
                  Id = "string",
                  Expression = "string",
                  MetricStat = list(
                    Metric = list(
                      Namespace = "string",
                      MetricName = "string",
                      Dimensions = list(
                        list(
                          Name = "string",
                          Value = "string"
                        )
                      )
                    ),
                    Stat = "string",
                    Unit = "string"
                  ),
                  Label = "string",
                  ReturnData = TRUE|FALSE
                )
              )
            ),
            CustomizedCapacityMetricSpecification = list(
              MetricDataQueries = list(
                list(
                  Id = "string",
                  Expression = "string",
                  MetricStat = list(
                    Metric = list(
                      Namespace = "string",
                      MetricName = "string",
                      Dimensions = list(
                        list(
                          Name = "string",
                          Value = "string"
                        )
                      )
                    ),
                    Stat = "string",
                    Unit = "string"
                  ),
                  Label = "string",
                  ReturnData = TRUE|FALSE
                )
              )
            )
          )
        )
      ),
      CapacityForecast = list(
        Timestamps = list(
          as.POSIXct(
            "2015-01-01"
          )
        ),
        Values = list(
          123.0
        )
      ),
      UpdateTime = as.POSIXct(
        "2015-01-01"
      )
    )

### Request syntax

    svc$get_predictive_scaling_forecast(
      AutoScalingGroupName = "string",
      PolicyName = "string",
      StartTime = as.POSIXct(
        "2015-01-01"
      ),
      EndTime = as.POSIXct(
        "2015-01-01"
      )
    )
