<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codeguruprofiler_batch_get_frame_metric_data</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns the time series of values for a requested list of frame metrics from a time period

### Description

Returns the time series of values for a requested list of frame metrics
from a time period.

### Usage

    codeguruprofiler_batch_get_frame_metric_data(endTime, frameMetrics,
      period, profilingGroupName, startTime, targetResolution)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="codeguruprofiler_batch_get_frame_metric_data_:_endTime">endTime</code></td>
<td><p>The end time of the time period for the returned time series
values. This is specified using the ISO 8601 format. For example,
2020-06-01T13:15:02.001Z represents 1 millisecond past June 1, 2020
1:15:02 PM UTC.</p></td>
</tr>
<tr class="even">
<td><code
id="codeguruprofiler_batch_get_frame_metric_data_:_frameMetrics">frameMetrics</code></td>
<td><p>The details of the metrics that are used to request a time series
of values. The metric includes the name of the frame, the aggregation
type to calculate the metric value for the frame, and the thread states
to use to get the count for the metric value of the frame.</p></td>
</tr>
<tr class="odd">
<td><code
id="codeguruprofiler_batch_get_frame_metric_data_:_period">period</code></td>
<td><p>The duration of the frame metrics used to return the time series
values. Specify using the ISO 8601 format. The maximum period duration
is one day (<code>PT24H</code> or <code>P1D</code>).</p></td>
</tr>
<tr class="even">
<td><code
id="codeguruprofiler_batch_get_frame_metric_data_:_profilingGroupName">profilingGroupName</code></td>
<td><p>[required] The name of the profiling group associated with the
the frame metrics used to return the time series values.</p></td>
</tr>
<tr class="odd">
<td><code
id="codeguruprofiler_batch_get_frame_metric_data_:_startTime">startTime</code></td>
<td><p>The start time of the time period for the frame metrics used to
return the time series values. This is specified using the ISO 8601
format. For example, 2020-06-01T13:15:02.001Z represents 1 millisecond
past June 1, 2020 1:15:02 PM UTC.</p></td>
</tr>
<tr class="even">
<td><code
id="codeguruprofiler_batch_get_frame_metric_data_:_targetResolution">targetResolution</code></td>
<td><p>The requested resolution of time steps for the returned time
series of values. If the requested target resolution is not available
due to data not being retained we provide a best effort result by
falling back to the most granular available resolution after the target
resolution. There are 3 valid values.</p>
<ul>
<li><p><code>P1D</code> — 1 day</p></li>
<li><p><code>PT1H</code> — 1 hour</p></li>
<li><p><code>PT5M</code> — 5 minutes</p></li>
</ul></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      endTime = as.POSIXct(
        "2015-01-01"
      ),
      endTimes = list(
        list(
          value = as.POSIXct(
            "2015-01-01"
          )
        )
      ),
      frameMetricData = list(
        list(
          frameMetric = list(
            frameName = "string",
            threadStates = list(
              "string"
            ),
            type = "AggregatedRelativeTotalTime"
          ),
          values = list(
            123.0
          )
        )
      ),
      resolution = "PT5M"|"PT1H"|"P1D",
      startTime = as.POSIXct(
        "2015-01-01"
      ),
      unprocessedEndTimes = list(
        list(
          list(
            value = as.POSIXct(
              "2015-01-01"
            )
          )
        )
      )
    )

### Request syntax

    svc$batch_get_frame_metric_data(
      endTime = as.POSIXct(
        "2015-01-01"
      ),
      frameMetrics = list(
        list(
          frameName = "string",
          threadStates = list(
            "string"
          ),
          type = "AggregatedRelativeTotalTime"
        )
      ),
      period = "string",
      profilingGroupName = "string",
      startTime = as.POSIXct(
        "2015-01-01"
      ),
      targetResolution = "PT5M"|"PT1H"|"P1D"
    )
