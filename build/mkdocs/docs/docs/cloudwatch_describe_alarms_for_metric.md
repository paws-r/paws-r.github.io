<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudwatch_describe_alarms_for_metric</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves the alarms for the specified metric

### Description

Retrieves the alarms for the specified metric. To filter the results,
specify a statistic, period, or unit.

This operation retrieves only standard alarms that are based on the
specified metric. It does not return alarms based on math expressions
that use the specified metric, or composite alarms that use the
specified metric.

### Usage

    cloudwatch_describe_alarms_for_metric(MetricName, Namespace, Statistic,
      ExtendedStatistic, Dimensions, Period, Unit)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudwatch_describe_alarms_for_metric_:_MetricName">MetricName</code></td>
<td><p>[required] The name of the metric.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudwatch_describe_alarms_for_metric_:_Namespace">Namespace</code></td>
<td><p>[required] The namespace of the metric.</p></td>
</tr>
<tr class="odd">
<td><code
id="cloudwatch_describe_alarms_for_metric_:_Statistic">Statistic</code></td>
<td><p>The statistic for the metric, other than percentiles. For
percentile statistics, use <code>ExtendedStatistics</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudwatch_describe_alarms_for_metric_:_ExtendedStatistic">ExtendedStatistic</code></td>
<td><p>The percentile statistic for the metric. Specify a value between
p0.0 and p100.</p></td>
</tr>
<tr class="odd">
<td><code
id="cloudwatch_describe_alarms_for_metric_:_Dimensions">Dimensions</code></td>
<td><p>The dimensions associated with the metric. If the metric has any
associated dimensions, you must specify them in order for the call to
succeed.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudwatch_describe_alarms_for_metric_:_Period">Period</code></td>
<td><p>The period, in seconds, over which the statistic is
applied.</p></td>
</tr>
<tr class="odd">
<td><code
id="cloudwatch_describe_alarms_for_metric_:_Unit">Unit</code></td>
<td><p>The unit for the metric.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      MetricAlarms = list(
        list(
          AlarmName = "string",
          AlarmArn = "string",
          AlarmDescription = "string",
          AlarmConfigurationUpdatedTimestamp = as.POSIXct(
            "2015-01-01"
          ),
          ActionsEnabled = TRUE|FALSE,
          OKActions = list(
            "string"
          ),
          AlarmActions = list(
            "string"
          ),
          InsufficientDataActions = list(
            "string"
          ),
          StateValue = "OK"|"ALARM"|"INSUFFICIENT_DATA",
          StateReason = "string",
          StateReasonData = "string",
          StateUpdatedTimestamp = as.POSIXct(
            "2015-01-01"
          ),
          MetricName = "string",
          Namespace = "string",
          Statistic = "SampleCount"|"Average"|"Sum"|"Minimum"|"Maximum",
          ExtendedStatistic = "string",
          Dimensions = list(
            list(
              Name = "string",
              Value = "string"
            )
          ),
          Period = 123,
          Unit = "Seconds"|"Microseconds"|"Milliseconds"|"Bytes"|"Kilobytes"|"Megabytes"|"Gigabytes"|"Terabytes"|"Bits"|"Kilobits"|"Megabits"|"Gigabits"|"Terabits"|"Percent"|"Count"|"Bytes/Second"|"Kilobytes/Second"|"Megabytes/Second"|"Gigabytes/Second"|"Terabytes/Second"|"Bits/Second"|"Kilobits/Second"|"Megabits/Second"|"Gigabits/Second"|"Terabits/Second"|"Count/Second"|"None",
          EvaluationPeriods = 123,
          DatapointsToAlarm = 123,
          Threshold = 123.0,
          ComparisonOperator = "GreaterThanOrEqualToThreshold"|"GreaterThanThreshold"|"LessThanThreshold"|"LessThanOrEqualToThreshold"|"LessThanLowerOrGreaterThanUpperThreshold"|"LessThanLowerThreshold"|"GreaterThanUpperThreshold",
          TreatMissingData = "string",
          EvaluateLowSampleCountPercentile = "string",
          Metrics = list(
            list(
              Id = "string",
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
                Period = 123,
                Stat = "string",
                Unit = "Seconds"|"Microseconds"|"Milliseconds"|"Bytes"|"Kilobytes"|"Megabytes"|"Gigabytes"|"Terabytes"|"Bits"|"Kilobits"|"Megabits"|"Gigabits"|"Terabits"|"Percent"|"Count"|"Bytes/Second"|"Kilobytes/Second"|"Megabytes/Second"|"Gigabytes/Second"|"Terabytes/Second"|"Bits/Second"|"Kilobits/Second"|"Megabits/Second"|"Gigabits/Second"|"Terabits/Second"|"Count/Second"|"None"
              ),
              Expression = "string",
              Label = "string",
              ReturnData = TRUE|FALSE,
              Period = 123,
              AccountId = "string"
            )
          ),
          ThresholdMetricId = "string",
          EvaluationState = "PARTIAL_DATA",
          StateTransitionedTimestamp = as.POSIXct(
            "2015-01-01"
          )
        )
      )
    )

### Request syntax

    svc$describe_alarms_for_metric(
      MetricName = "string",
      Namespace = "string",
      Statistic = "SampleCount"|"Average"|"Sum"|"Minimum"|"Maximum",
      ExtendedStatistic = "string",
      Dimensions = list(
        list(
          Name = "string",
          Value = "string"
        )
      ),
      Period = 123,
      Unit = "Seconds"|"Microseconds"|"Milliseconds"|"Bytes"|"Kilobytes"|"Megabytes"|"Gigabytes"|"Terabytes"|"Bits"|"Kilobits"|"Megabits"|"Gigabits"|"Terabits"|"Percent"|"Count"|"Bytes/Second"|"Kilobytes/Second"|"Megabytes/Second"|"Gigabytes/Second"|"Terabytes/Second"|"Bits/Second"|"Kilobits/Second"|"Megabits/Second"|"Gigabits/Second"|"Terabits/Second"|"Count/Second"|"None"
    )
