<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>connect_get_metric_data</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets historical metric data from the specified Amazon Connect instance

### Description

Gets historical metric data from the specified Amazon Connect instance.

For a description of each historical metric, see [Historical Metrics
Definitions](https://docs.aws.amazon.com/connect/latest/adminguide/historical-metrics-definitions.html)
in the *Amazon Connect Administrator Guide*.

### Usage

    connect_get_metric_data(InstanceId, StartTime, EndTime, Filters,
      Groupings, HistoricalMetrics, NextToken, MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="connect_get_metric_data_:_InstanceId">InstanceId</code></td>
<td><p>[required] The identifier of the Amazon Connect instance. You can
<a
href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find
the instance ID</a> in the Amazon Resource Name (ARN) of the
instance.</p></td>
</tr>
<tr class="even">
<td><code id="connect_get_metric_data_:_StartTime">StartTime</code></td>
<td><p>[required] The timestamp, in UNIX Epoch time format, at which to
start the reporting interval for the retrieval of historical metrics
data. The time must be specified using a multiple of 5 minutes, such as
10:05, 10:10, 10:15.</p>
<p>The start time cannot be earlier than 24 hours before the time of the
request. Historical metrics are available only for 24 hours.</p></td>
</tr>
<tr class="odd">
<td><code id="connect_get_metric_data_:_EndTime">EndTime</code></td>
<td><p>[required] The timestamp, in UNIX Epoch time format, at which to
end the reporting interval for the retrieval of historical metrics data.
The time must be specified using an interval of 5 minutes, such as
11:00, 11:05, 11:10, and must be later than the start time
timestamp.</p>
<p>The time range between the start and end time must be less than 24
hours.</p></td>
</tr>
<tr class="even">
<td><code id="connect_get_metric_data_:_Filters">Filters</code></td>
<td><p>[required] The queues, up to 100, or channels, to use to filter
the metrics returned. Metric data is retrieved only for the resources
associated with the queues or channels included in the filter. You can
include both queue IDs and queue ARNs in the same request. VOICE, CHAT,
and TASK channels are supported.</p>
<p>To filter by <code>Queues</code>, enter the queue ID/ARN, not the
name of the queue.</p></td>
</tr>
<tr class="odd">
<td><code id="connect_get_metric_data_:_Groupings">Groupings</code></td>
<td><p>The grouping applied to the metrics returned. For example, when
results are grouped by queue, the metrics returned are grouped by queue.
The values returned apply to the metrics for each queue rather than
aggregated for all queues.</p>
<p>If no grouping is specified, a summary of metrics for all queues is
returned.</p></td>
</tr>
<tr class="even">
<td><code
id="connect_get_metric_data_:_HistoricalMetrics">HistoricalMetrics</code></td>
<td><p>[required] The metrics to retrieve. Specify the name, unit, and
statistic for each metric. The following historical metrics are
available. For a description of each metric, see <a
href="https://docs.aws.amazon.com/connect/latest/adminguide/historical-metrics-definitions.html">Historical
Metrics Definitions</a> in the <em>Amazon Connect Administrator
Guide</em>.</p>
<p>This API does not support a contacts incoming metric (there's no
CONTACTS_INCOMING metric missing from the documented list).</p>
<p><strong>ABANDON_TIME</strong></p>
<p>Unit: SECONDS</p>
<p>Statistic: AVG</p>
<p><strong>AFTER_CONTACT_WORK_TIME</strong></p>
<p>Unit: SECONDS</p>
<p>Statistic: AVG</p>
<p><strong>API_CONTACTS_HANDLED</strong></p>
<p>Unit: COUNT</p>
<p>Statistic: SUM</p>
<p><strong>CALLBACK_CONTACTS_HANDLED</strong></p>
<p>Unit: COUNT</p>
<p>Statistic: SUM</p>
<p><strong>CONTACTS_ABANDONED</strong></p>
<p>Unit: COUNT</p>
<p>Statistic: SUM</p>
<p><strong>CONTACTS_AGENT_HUNG_UP_FIRST</strong></p>
<p>Unit: COUNT</p>
<p>Statistic: SUM</p>
<p><strong>CONTACTS_CONSULTED</strong></p>
<p>Unit: COUNT</p>
<p>Statistic: SUM</p>
<p><strong>CONTACTS_HANDLED</strong></p>
<p>Unit: COUNT</p>
<p>Statistic: SUM</p>
<p><strong>CONTACTS_HANDLED_INCOMING</strong></p>
<p>Unit: COUNT</p>
<p>Statistic: SUM</p>
<p><strong>CONTACTS_HANDLED_OUTBOUND</strong></p>
<p>Unit: COUNT</p>
<p>Statistic: SUM</p>
<p><strong>CONTACTS_HOLD_ABANDONS</strong></p>
<p>Unit: COUNT</p>
<p>Statistic: SUM</p>
<p><strong>CONTACTS_MISSED</strong></p>
<p>Unit: COUNT</p>
<p>Statistic: SUM</p>
<p><strong>CONTACTS_QUEUED</strong></p>
<p>Unit: COUNT</p>
<p>Statistic: SUM</p>
<p><strong>CONTACTS_TRANSFERRED_IN</strong></p>
<p>Unit: COUNT</p>
<p>Statistic: SUM</p>
<p><strong>CONTACTS_TRANSFERRED_IN_FROM_QUEUE</strong></p>
<p>Unit: COUNT</p>
<p>Statistic: SUM</p>
<p><strong>CONTACTS_TRANSFERRED_OUT</strong></p>
<p>Unit: COUNT</p>
<p>Statistic: SUM</p>
<p><strong>CONTACTS_TRANSFERRED_OUT_FROM_QUEUE</strong></p>
<p>Unit: COUNT</p>
<p>Statistic: SUM</p>
<p><strong>HANDLE_TIME</strong></p>
<p>Unit: SECONDS</p>
<p>Statistic: AVG</p>
<p><strong>HOLD_TIME</strong></p>
<p>Unit: SECONDS</p>
<p>Statistic: AVG</p>
<p><strong>INTERACTION_AND_HOLD_TIME</strong></p>
<p>Unit: SECONDS</p>
<p>Statistic: AVG</p>
<p><strong>INTERACTION_TIME</strong></p>
<p>Unit: SECONDS</p>
<p>Statistic: AVG</p>
<p><strong>OCCUPANCY</strong></p>
<p>Unit: PERCENT</p>
<p>Statistic: AVG</p>
<p><strong>QUEUE_ANSWER_TIME</strong></p>
<p>Unit: SECONDS</p>
<p>Statistic: AVG</p>
<p><strong>QUEUED_TIME</strong></p>
<p>Unit: SECONDS</p>
<p>Statistic: MAX</p>
<p><strong>SERVICE_LEVEL</strong></p>
<p>You can include up to 20 SERVICE_LEVEL metrics in a request.</p>
<p>Unit: PERCENT</p>
<p>Statistic: AVG</p>
<p>Threshold: For <code>ThresholdValue</code>, enter any whole number
from 1 to 604800 (inclusive), in seconds. For <code>Comparison</code>,
you must enter <code>LT</code> (for "Less than").</p></td>
</tr>
<tr class="odd">
<td><code id="connect_get_metric_data_:_NextToken">NextToken</code></td>
<td><p>The token for the next set of results. Use the value returned in
the previous response in the next request to retrieve the next set of
results.</p></td>
</tr>
<tr class="even">
<td><code
id="connect_get_metric_data_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to return per page.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      NextToken = "string",
      MetricResults = list(
        list(
          Dimensions = list(
            Queue = list(
              Id = "string",
              Arn = "string"
            ),
            Channel = "VOICE"|"CHAT"|"TASK",
            RoutingProfile = list(
              Id = "string",
              Arn = "string"
            )
          ),
          Collections = list(
            list(
              Metric = list(
                Name = "CONTACTS_QUEUED"|"CONTACTS_HANDLED"|"CONTACTS_ABANDONED"|"CONTACTS_CONSULTED"|"CONTACTS_AGENT_HUNG_UP_FIRST"|"CONTACTS_HANDLED_INCOMING"|"CONTACTS_HANDLED_OUTBOUND"|"CONTACTS_HOLD_ABANDONS"|"CONTACTS_TRANSFERRED_IN"|"CONTACTS_TRANSFERRED_OUT"|"CONTACTS_TRANSFERRED_IN_FROM_QUEUE"|"CONTACTS_TRANSFERRED_OUT_FROM_QUEUE"|"CONTACTS_MISSED"|"CALLBACK_CONTACTS_HANDLED"|"API_CONTACTS_HANDLED"|"OCCUPANCY"|"HANDLE_TIME"|"AFTER_CONTACT_WORK_TIME"|"QUEUED_TIME"|"ABANDON_TIME"|"QUEUE_ANSWER_TIME"|"HOLD_TIME"|"INTERACTION_TIME"|"INTERACTION_AND_HOLD_TIME"|"SERVICE_LEVEL",
                Threshold = list(
                  Comparison = "LT",
                  ThresholdValue = 123.0
                ),
                Statistic = "SUM"|"MAX"|"AVG",
                Unit = "SECONDS"|"COUNT"|"PERCENT"
              ),
              Value = 123.0
            )
          )
        )
      )
    )

### Request syntax

    svc$get_metric_data(
      InstanceId = "string",
      StartTime = as.POSIXct(
        "2015-01-01"
      ),
      EndTime = as.POSIXct(
        "2015-01-01"
      ),
      Filters = list(
        Queues = list(
          "string"
        ),
        Channels = list(
          "VOICE"|"CHAT"|"TASK"
        ),
        RoutingProfiles = list(
          "string"
        )
      ),
      Groupings = list(
        "QUEUE"|"CHANNEL"|"ROUTING_PROFILE"
      ),
      HistoricalMetrics = list(
        list(
          Name = "CONTACTS_QUEUED"|"CONTACTS_HANDLED"|"CONTACTS_ABANDONED"|"CONTACTS_CONSULTED"|"CONTACTS_AGENT_HUNG_UP_FIRST"|"CONTACTS_HANDLED_INCOMING"|"CONTACTS_HANDLED_OUTBOUND"|"CONTACTS_HOLD_ABANDONS"|"CONTACTS_TRANSFERRED_IN"|"CONTACTS_TRANSFERRED_OUT"|"CONTACTS_TRANSFERRED_IN_FROM_QUEUE"|"CONTACTS_TRANSFERRED_OUT_FROM_QUEUE"|"CONTACTS_MISSED"|"CALLBACK_CONTACTS_HANDLED"|"API_CONTACTS_HANDLED"|"OCCUPANCY"|"HANDLE_TIME"|"AFTER_CONTACT_WORK_TIME"|"QUEUED_TIME"|"ABANDON_TIME"|"QUEUE_ANSWER_TIME"|"HOLD_TIME"|"INTERACTION_TIME"|"INTERACTION_AND_HOLD_TIME"|"SERVICE_LEVEL",
          Threshold = list(
            Comparison = "LT",
            ThresholdValue = 123.0
          ),
          Statistic = "SUM"|"MAX"|"AVG",
          Unit = "SECONDS"|"COUNT"|"PERCENT"
        )
      ),
      NextToken = "string",
      MaxResults = 123
    )
