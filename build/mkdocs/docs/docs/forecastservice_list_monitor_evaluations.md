<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>forecastservice_list_monitor_evaluations</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a list of the monitoring evaluation results and predictor events collected by the monitor resource during different windows of time

### Description

Returns a list of the monitoring evaluation results and predictor events
collected by the monitor resource during different windows of time.

For information about monitoring see predictor-monitoring. For more
information about retrieving monitoring results see [Viewing Monitoring
Results](https://docs.aws.amazon.com/forecast/latest/dg/predictor-monitoring-results.html).

### Usage

    forecastservice_list_monitor_evaluations(NextToken, MaxResults,
      MonitorArn, Filters)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="forecastservice_list_monitor_evaluations_:_NextToken">NextToken</code></td>
<td><p>If the result of the previous request was truncated, the response
includes a <code>NextToken</code>. To retrieve the next set of results,
use the token in the next request. Tokens expire after 24
hours.</p></td>
</tr>
<tr class="even">
<td><code
id="forecastservice_list_monitor_evaluations_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of monitoring results to return.</p></td>
</tr>
<tr class="odd">
<td><code
id="forecastservice_list_monitor_evaluations_:_MonitorArn">MonitorArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the monitor resource
to get results from.</p></td>
</tr>
<tr class="even">
<td><code
id="forecastservice_list_monitor_evaluations_:_Filters">Filters</code></td>
<td><p>An array of filters. For each filter, provide a condition and a
match statement. The condition is either <code>IS</code> or
<code>IS_NOT</code>, which specifies whether to include or exclude the
resources that match the statement from the list. The match statement
consists of a key and a value.</p>
<p><strong>Filter properties</strong></p>
<ul>
<li><p><code>Condition</code> - The condition to apply. Valid values are
<code>IS</code> and <code>IS_NOT</code>.</p></li>
<li><p><code>Key</code> - The name of the parameter to filter on. The
only valid value is <code>EvaluationState</code>.</p></li>
<li><p><code>Value</code> - The value to match. Valid values are only
<code>SUCCESS</code> or <code>FAILURE</code>.</p></li>
</ul>
<p>For example, to list only successful monitor evaluations, you would
specify:</p>
<p><code
style="white-space: pre;">⁠"Filters": [ { "Condition": "IS", "Key": "EvaluationState", "Value": "SUCCESS" } ]⁠</code></p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      NextToken = "string",
      PredictorMonitorEvaluations = list(
        list(
          ResourceArn = "string",
          MonitorArn = "string",
          EvaluationTime = as.POSIXct(
            "2015-01-01"
          ),
          EvaluationState = "string",
          WindowStartDatetime = as.POSIXct(
            "2015-01-01"
          ),
          WindowEndDatetime = as.POSIXct(
            "2015-01-01"
          ),
          PredictorEvent = list(
            Detail = "string",
            Datetime = as.POSIXct(
              "2015-01-01"
            )
          ),
          MonitorDataSource = list(
            DatasetImportJobArn = "string",
            ForecastArn = "string",
            PredictorArn = "string"
          ),
          MetricResults = list(
            list(
              MetricName = "string",
              MetricValue = 123.0
            )
          ),
          NumItemsEvaluated = 123,
          Message = "string"
        )
      )
    )

### Request syntax

    svc$list_monitor_evaluations(
      NextToken = "string",
      MaxResults = 123,
      MonitorArn = "string",
      Filters = list(
        list(
          Key = "string",
          Value = "string",
          Condition = "IS"|"IS_NOT"
        )
      )
    )
