<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>connect_get_metric_data_v2</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets metric data from the specified Amazon Connect instance

### Description

Gets metric data from the specified Amazon Connect instance.

`get_metric_data_v2` offers more features than `get_metric_data`, the
previous version of this API. It has new metrics, offers filtering at a
metric level, and offers the ability to filter and group data by
channels, queues, routing profiles, agents, and agent hierarchy levels.
It can retrieve historical data for the last 35 days, in 24-hour
intervals.

For a description of the historical metrics that are supported by
`get_metric_data_v2` and `get_metric_data`, see [Historical metrics
definitions](https://docs.aws.amazon.com/connect/latest/adminguide/historical-metrics-definitions.html)
in the *Amazon Connect Administrator's Guide*.

This API is not available in the Amazon Web Services GovCloud (US)
Regions.

### Usage

    connect_get_metric_data_v2(ResourceArn, StartTime, EndTime, Filters,
      Groupings, Metrics, NextToken, MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="connect_get_metric_data_v2_:_ResourceArn">ResourceArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the resource. This
includes the <code>instanceId</code> an Amazon Connect
instance.</p></td>
</tr>
<tr class="even">
<td><code
id="connect_get_metric_data_v2_:_StartTime">StartTime</code></td>
<td><p>[required] The timestamp, in UNIX Epoch time format, at which to
start the reporting interval for the retrieval of historical metrics
data. The time must be before the end time timestamp. The time range
between the start and end time must be less than 24 hours. The start
time cannot be earlier than 35 days before the time of the request.
Historical metrics are available for 35 days.</p></td>
</tr>
<tr class="odd">
<td><code id="connect_get_metric_data_v2_:_EndTime">EndTime</code></td>
<td><p>[required] The timestamp, in UNIX Epoch time format, at which to
end the reporting interval for the retrieval of historical metrics data.
The time must be later than the start time timestamp. It cannot be later
than the current timestamp.</p>
<p>The time range between the start and end time must be less than 24
hours.</p></td>
</tr>
<tr class="even">
<td><code id="connect_get_metric_data_v2_:_Filters">Filters</code></td>
<td><p>[required] The filters to apply to returned metrics. You can
filter on the following resources:</p>
<ul>
<li><p>Queues</p></li>
<li><p>Routing profiles</p></li>
<li><p>Agents</p></li>
<li><p>Channels</p></li>
<li><p>User hierarchy groups</p></li>
</ul>
<p>At least one filter must be passed from queues, routing profiles,
agents, or user hierarchy groups.</p>
<p>To filter by phone number, see <a
href="https://docs.aws.amazon.com/connect/latest/adminguide/create-historical-metrics-report.html">Create
a historical metrics report</a> in the <em>Amazon Connect
Administrator's Guide</em>.</p>
<p>Note the following limits:</p>
<ul>
<li><p><strong>Filter keys</strong>: A maximum of 5 filter keys are
supported in a single request. Valid filter keys: <code>QUEUE</code> |
<code>ROUTING_PROFILE</code> | <code>AGENT</code> | <code>CHANNEL</code>
| <code>AGENT_HIERARCHY_LEVEL_ONE</code> |
<code>AGENT_HIERARCHY_LEVEL_TWO</code> |
<code>AGENT_HIERARCHY_LEVEL_THREE</code> |
<code>AGENT_HIERARCHY_LEVEL_FOUR</code> |
<code>AGENT_HIERARCHY_LEVEL_FIVE</code></p></li>
<li><p><strong>Filter values</strong>: A maximum of 100 filter values
are supported in a single request. For example, a
<code>get_metric_data_v2</code> request can filter by 50 queues, 35
agents, and 15 routing profiles for a total of 100 filter values.
<code>VOICE</code>, <code>CHAT</code>, and <code>TASK</code> are valid
<code>filterValue</code> for the <code>CHANNEL</code> filter
key.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code
id="connect_get_metric_data_v2_:_Groupings">Groupings</code></td>
<td><p>The grouping applied to the metrics that are returned. For
example, when results are grouped by queue, the metrics returned are
grouped by queue. The values that are returned apply to the metrics for
each queue. They are not aggregated for all queues.</p>
<p>If no grouping is specified, a summary of all metrics is
returned.</p>
<p>Valid grouping keys: <code>QUEUE</code> |
<code>ROUTING_PROFILE</code> | <code>AGENT</code> | <code>CHANNEL</code>
| <code>AGENT_HIERARCHY_LEVEL_ONE</code> |
<code>AGENT_HIERARCHY_LEVEL_TWO</code> |
<code>AGENT_HIERARCHY_LEVEL_THREE</code> |
<code>AGENT_HIERARCHY_LEVEL_FOUR</code> |
<code>AGENT_HIERARCHY_LEVEL_FIVE</code></p></td>
</tr>
<tr class="even">
<td><code id="connect_get_metric_data_v2_:_Metrics">Metrics</code></td>
<td><p>[required] The metrics to retrieve. Specify the name, groupings,
and filters for each metric. The following historical metrics are
available. For a description of each metric, see <a
href="https://docs.aws.amazon.com/connect/latest/adminguide/historical-metrics-definitions.html">Historical
metrics definitions</a> in the <em>Amazon Connect Administrator's
Guide</em>.</p>
<p><strong>AGENT_ADHERENT_TIME</strong></p>
<p>This metric is available only in Amazon Web Services Regions where <a
href="https://docs.aws.amazon.com/connect/latest/adminguide/regions.html#optimization_region">Forecasting,
capacity planning, and scheduling</a> is available.</p>
<p>Unit: Seconds</p>
<p>Valid groupings and filters: Queue, Channel, Routing Profile, Agent,
Agent Hierarchy</p>
<p><strong>AGENT_NON_RESPONSE</strong></p>
<p>Unit: Count</p>
<p>Valid groupings and filters: Queue, Channel, Routing Profile, Agent,
Agent Hierarchy</p>
<p><strong>AGENT_OCCUPANCY</strong></p>
<p>Unit: Percentage</p>
<p>Valid groupings and filters: Routing Profile, Agent, Agent
Hierarchy</p>
<p><strong>AGENT_SCHEDULE_ADHERENCE</strong></p>
<p>This metric is available only in Amazon Web Services Regions where <a
href="https://docs.aws.amazon.com/connect/latest/adminguide/regions.html#optimization_region">Forecasting,
capacity planning, and scheduling</a> is available.</p>
<p>Unit: Percent</p>
<p>Valid groupings and filters: Queue, Channel, Routing Profile, Agent,
Agent Hierarchy</p>
<p><strong>AGENT_SCHEDULED_TIME</strong></p>
<p>This metric is available only in Amazon Web Services Regions where <a
href="https://docs.aws.amazon.com/connect/latest/adminguide/regions.html#optimization_region">Forecasting,
capacity planning, and scheduling</a> is available.</p>
<p>Unit: Seconds</p>
<p>Valid groupings and filters: Queue, Channel, Routing Profile, Agent,
Agent Hierarchy</p>
<p><strong>AVG_ABANDON_TIME</strong></p>
<p>Unit: Seconds</p>
<p>Valid groupings and filters: Queue, Channel, Routing Profile, Agent,
Agent Hierarchy</p>
<p><strong>AVG_AFTER_CONTACT_WORK_TIME</strong></p>
<p>Unit: Seconds</p>
<p>Valid groupings and filters: Queue, Channel, Routing Profile, Agent,
Agent Hierarchy</p>
<p><strong>AVG_AGENT_CONNECTING_TIME</strong></p>
<p>Unit: Seconds</p>
<p>Valid metric filter key: <code>INITIATION_METHOD</code>. For now,
this metric only supports the following as
<code>INITIATION_METHOD</code>: <code>INBOUND</code> |
<code>OUTBOUND</code> | <code>CALLBACK</code> | <code>API</code></p>
<p>Valid groupings and filters: Queue, Channel, Routing Profile, Agent,
Agent Hierarchy</p>
<p><strong>AVG_HANDLE_TIME</strong></p>
<p>Unit: Seconds</p>
<p>Valid groupings and filters: Queue, Channel, Routing Profile, Agent,
Agent Hierarchy</p>
<p><strong>AVG_HOLD_TIME</strong></p>
<p>Unit: Seconds</p>
<p>Valid groupings and filters: Queue, Channel, Routing Profile, Agent,
Agent Hierarchy</p>
<p><strong>AVG_INTERACTION_AND_HOLD_TIME</strong></p>
<p>Unit: Seconds</p>
<p>Valid groupings and filters: Queue, Channel, Routing Profile, Agent,
Agent Hierarchy</p>
<p><strong>AVG_INTERACTION_TIME</strong></p>
<p>Unit: Seconds</p>
<p>Valid groupings and filters: Queue, Channel, Routing Profile</p>
<p><strong>AVG_QUEUE_ANSWER_TIME</strong></p>
<p>Unit: Seconds</p>
<p>Valid groupings and filters: Queue, Channel, Routing Profile</p>
<p><strong>CONTACTS_ABANDONED</strong></p>
<p>Unit: Count</p>
<p>Valid groupings and filters: Queue, Channel, Routing Profile, Agent,
Agent Hierarchy</p>
<p><strong>CONTACTS_CREATED</strong></p>
<p>Unit: Count</p>
<p>Valid metric filter key: <code>INITIATION_METHOD</code></p>
<p>Valid groupings and filters: Queue, Channel, Routing Profile</p>
<p><strong>CONTACTS_HANDLED</strong></p>
<p>Unit: Count</p>
<p>Valid metric filter key: <code>INITIATION_METHOD</code>,
<code>DISCONNECT_REASON</code></p>
<p>Valid groupings and filters: Queue, Channel, Routing Profile, Agent,
Agent Hierarchy</p>
<p><strong>CONTACTS_HOLD_ABANDONS</strong></p>
<p>Unit: Count</p>
<p>Valid groupings and filters: Queue, Channel, Routing Profile, Agent,
Agent Hierarchy</p>
<p><strong>CONTACTS_QUEUED</strong></p>
<p>Unit: Count</p>
<p>Valid groupings and filters: Queue, Channel, Routing Profile, Agent,
Agent Hierarchy</p>
<p><strong>CONTACTS_TRANSFERRED_OUT</strong></p>
<p>Unit: Count</p>
<p>Valid groupings and filters: Queue, Channel, Routing Profile, Agent,
Agent Hierarchy</p>
<p><strong>CONTACTS_TRANSFERRED_OUT_BY_AGENT</strong></p>
<p>Unit: Count</p>
<p>Valid groupings and filters: Queue, Channel, Routing Profile, Agent,
Agent Hierarchy</p>
<p><strong>CONTACTS_TRANSFERRED_OUT_FROM_QUEUE</strong></p>
<p>Unit: Count</p>
<p>Valid groupings and filters: Queue, Channel, Routing Profile, Agent,
Agent Hierarchy</p>
<p><strong>MAX_QUEUED_TIME</strong></p>
<p>Unit: Seconds</p>
<p>Valid groupings and filters: Queue, Channel, Routing Profile, Agent,
Agent Hierarchy</p>
<p><strong>SERVICE_LEVEL</strong></p>
<p>You can include up to 20 SERVICE_LEVEL metrics in a request.</p>
<p>Unit: Percent</p>
<p>Valid groupings and filters: Queue, Channel, Routing Profile</p>
<p>Threshold: For <code>ThresholdValue</code>, enter any whole number
from 1 to 604800 (inclusive), in seconds. For <code>Comparison</code>,
you must enter <code>LT</code> (for "Less than").</p>
<p><strong>SUM_CONTACTS_ANSWERED_IN_X</strong></p>
<p>Unit: Count</p>
<p>Valid groupings and filters: Queue, Channel, Routing Profile</p>
<p>Threshold: For <code>ThresholdValue</code>, enter any whole number
from 1 to 604800 (inclusive), in seconds. For <code>Comparison</code>,
you must enter <code>LT</code> (for "Less than").</p>
<p><strong>SUM_CONTACTS_ABANDONED_IN_X</strong></p>
<p>Unit: Count</p>
<p>Valid groupings and filters: Queue, Channel, Routing Profile</p>
<p>Threshold: For <code>ThresholdValue</code>, enter any whole number
from 1 to 604800 (inclusive), in seconds. For <code>Comparison</code>,
you must enter <code>LT</code> (for "Less than").</p>
<p><strong>SUM_CONTACTS_DISCONNECTED</strong></p>
<p>Valid metric filter key: <code>DISCONNECT_REASON</code></p>
<p>Unit: Count</p>
<p>Valid groupings and filters: Queue, Channel, Routing Profile</p>
<p><strong>SUM_RETRY_CALLBACK_ATTEMPTS</strong></p>
<p>Unit: Count</p>
<p>Valid groupings and filters: Queue, Channel, Routing Profile</p></td>
</tr>
<tr class="odd">
<td><code
id="connect_get_metric_data_v2_:_NextToken">NextToken</code></td>
<td><p>The token for the next set of results. Use the value returned in
the previous response in the next request to retrieve the next set of
results.</p></td>
</tr>
<tr class="even">
<td><code
id="connect_get_metric_data_v2_:_MaxResults">MaxResults</code></td>
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
            "string"
          ),
          Collections = list(
            list(
              Metric = list(
                Name = "string",
                Threshold = list(
                  list(
                    Comparison = "string",
                    ThresholdValue = 123.0
                  )
                ),
                MetricFilters = list(
                  list(
                    MetricFilterKey = "string",
                    MetricFilterValues = list(
                      "string"
                    )
                  )
                )
              ),
              Value = 123.0
            )
          )
        )
      )
    )

### Request syntax

    svc$get_metric_data_v2(
      ResourceArn = "string",
      StartTime = as.POSIXct(
        "2015-01-01"
      ),
      EndTime = as.POSIXct(
        "2015-01-01"
      ),
      Filters = list(
        list(
          FilterKey = "string",
          FilterValues = list(
            "string"
          )
        )
      ),
      Groupings = list(
        "string"
      ),
      Metrics = list(
        list(
          Name = "string",
          Threshold = list(
            list(
              Comparison = "string",
              ThresholdValue = 123.0
            )
          ),
          MetricFilters = list(
            list(
              MetricFilterKey = "string",
              MetricFilterValues = list(
                "string"
              )
            )
          )
        )
      ),
      NextToken = "string",
      MaxResults = 123
    )
