<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudwatch_get_insight_rule_report</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## This operation returns the time series data collected by a Contributor Insights rule

### Description

This operation returns the time series data collected by a Contributor
Insights rule. The data includes the identity and number of contributors
to the log group.

You can also optionally return one or more statistics about each data
point in the time series. These statistics can include the following:

-   `UniqueContributors` – the number of unique contributors for each
    data point.

-   `MaxContributorValue` – the value of the top contributor for each
    data point. The identity of the contributor might change for each
    data point in the graph.

    If this rule aggregates by COUNT, the top contributor for each data
    point is the contributor with the most occurrences in that period.
    If the rule aggregates by SUM, the top contributor is the
    contributor with the highest sum in the log field specified by the
    rule's `Value`, during that period.

-   `SampleCount` – the number of data points matched by the rule.

-   `Sum` – the sum of the values from all contributors during the time
    period represented by that data point.

-   `Minimum` – the minimum value from a single observation during the
    time period represented by that data point.

-   `Maximum` – the maximum value from a single observation during the
    time period represented by that data point.

-   `Average` – the average value from all contributors during the time
    period represented by that data point.

### Usage

    cloudwatch_get_insight_rule_report(RuleName, StartTime, EndTime, Period,
      MaxContributorCount, Metrics, OrderBy)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudwatch_get_insight_rule_report_:_RuleName">RuleName</code></td>
<td><p>[required] The name of the rule that you want to see data
from.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudwatch_get_insight_rule_report_:_StartTime">StartTime</code></td>
<td><p>[required] The start time of the data to use in the report. When
used in a raw HTTP Query API, it is formatted as <code
style="white-space: pre;">⁠yyyy-MM-dd'T'HH:mm:ss⁠</code>. For example,
<code style="white-space: pre;">⁠2019-07-01T23:59:59⁠</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="cloudwatch_get_insight_rule_report_:_EndTime">EndTime</code></td>
<td><p>[required] The end time of the data to use in the report. When
used in a raw HTTP Query API, it is formatted as <code
style="white-space: pre;">⁠yyyy-MM-dd'T'HH:mm:ss⁠</code>. For example,
<code style="white-space: pre;">⁠2019-07-01T23:59:59⁠</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudwatch_get_insight_rule_report_:_Period">Period</code></td>
<td><p>[required] The period, in seconds, to use for the statistics in
the <code>InsightRuleMetricDatapoint</code> results.</p></td>
</tr>
<tr class="odd">
<td><code
id="cloudwatch_get_insight_rule_report_:_MaxContributorCount">MaxContributorCount</code></td>
<td><p>The maximum number of contributors to include in the report. The
range is 1 to 100. If you omit this, the default of 10 is used.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudwatch_get_insight_rule_report_:_Metrics">Metrics</code></td>
<td><p>Specifies which metrics to use for aggregation of contributor
values for the report. You can specify one or more of the following
metrics:</p>
<ul>
<li><p><code>UniqueContributors</code> – the number of unique
contributors for each data point.</p></li>
<li><p><code>MaxContributorValue</code> – the value of the top
contributor for each data point. The identity of the contributor might
change for each data point in the graph.</p>
<p>If this rule aggregates by COUNT, the top contributor for each data
point is the contributor with the most occurrences in that period. If
the rule aggregates by SUM, the top contributor is the contributor with
the highest sum in the log field specified by the rule's
<code>Value</code>, during that period.</p></li>
<li><p><code>SampleCount</code> – the number of data points matched by
the rule.</p></li>
<li><p><code>Sum</code> – the sum of the values from all contributors
during the time period represented by that data point.</p></li>
<li><p><code>Minimum</code> – the minimum value from a single
observation during the time period represented by that data
point.</p></li>
<li><p><code>Maximum</code> – the maximum value from a single
observation during the time period represented by that data
point.</p></li>
<li><p><code>Average</code> – the average value from all contributors
during the time period represented by that data point.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code
id="cloudwatch_get_insight_rule_report_:_OrderBy">OrderBy</code></td>
<td><p>Determines what statistic to use to rank the contributors. Valid
values are SUM and MAXIMUM.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      KeyLabels = list(
        "string"
      ),
      AggregationStatistic = "string",
      AggregateValue = 123.0,
      ApproximateUniqueCount = 123,
      Contributors = list(
        list(
          Keys = list(
            "string"
          ),
          ApproximateAggregateValue = 123.0,
          Datapoints = list(
            list(
              Timestamp = as.POSIXct(
                "2015-01-01"
              ),
              ApproximateValue = 123.0
            )
          )
        )
      ),
      MetricDatapoints = list(
        list(
          Timestamp = as.POSIXct(
            "2015-01-01"
          ),
          UniqueContributors = 123.0,
          MaxContributorValue = 123.0,
          SampleCount = 123.0,
          Average = 123.0,
          Sum = 123.0,
          Minimum = 123.0,
          Maximum = 123.0
        )
      )
    )

### Request syntax

    svc$get_insight_rule_report(
      RuleName = "string",
      StartTime = as.POSIXct(
        "2015-01-01"
      ),
      EndTime = as.POSIXct(
        "2015-01-01"
      ),
      Period = 123,
      MaxContributorCount = 123,
      Metrics = list(
        "string"
      ),
      OrderBy = "string"
    )
