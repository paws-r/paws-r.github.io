<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>connect_get_current_metric_data</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets the real-time metric data from the specified Amazon Connect instance

### Description

Gets the real-time metric data from the specified Amazon Connect
instance.

For a description of each metric, see [Real-time Metrics
Definitions](https://docs.aws.amazon.com/connect/latest/adminguide/real-time-metrics-definitions.html)
in the *Amazon Connect Administrator Guide*.

### Usage

    connect_get_current_metric_data(InstanceId, Filters, Groupings,
      CurrentMetrics, NextToken, MaxResults, SortCriteria)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="connect_get_current_metric_data_:_InstanceId">InstanceId</code></td>
<td><p>[required] The identifier of the Amazon Connect instance. You can
<a
href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find
the instance ID</a> in the Amazon Resource Name (ARN) of the
instance.</p></td>
</tr>
<tr class="even">
<td><code
id="connect_get_current_metric_data_:_Filters">Filters</code></td>
<td><p>[required] The filters to apply to returned metrics. You can
filter up to the following limits:</p>
<ul>
<li><p>Queues: 100</p></li>
<li><p>Routing profiles: 100</p></li>
<li><p>Channels: 3 (VOICE, CHAT, and TASK channels are
supported.)</p></li>
</ul>
<p>Metric data is retrieved only for the resources associated with the
queues or routing profiles, and by any channels included in the filter.
(You cannot filter by both queue AND routing profile.) You can include
both resource IDs and resource ARNs in the same request.</p>
<p>Currently tagging is only supported on the resources that are passed
in the filter.</p></td>
</tr>
<tr class="odd">
<td><code
id="connect_get_current_metric_data_:_Groupings">Groupings</code></td>
<td><p>The grouping applied to the metrics returned. For example, when
grouped by <code>QUEUE</code>, the metrics returned apply to each queue
rather than aggregated for all queues.</p>
<ul>
<li><p>If you group by <code>CHANNEL</code>, you should include a
Channels filter. VOICE, CHAT, and TASK channels are supported.</p></li>
<li><p>If you group by <code>ROUTING_PROFILE</code>, you must include
either a queue or routing profile filter. In addition, a routing profile
filter is required for metrics <code>CONTACTS_SCHEDULED</code>,
<code>CONTACTS_IN_QUEUE</code>, and
<code> OLDEST_CONTACT_AGE</code>.</p></li>
<li><p>If no <code>Grouping</code> is included in the request, a summary
of metrics is returned.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="connect_get_current_metric_data_:_CurrentMetrics">CurrentMetrics</code></td>
<td><p>[required] The metrics to retrieve. Specify the name and unit for
each metric. The following metrics are available. For a description of
all the metrics, see <a
href="https://docs.aws.amazon.com/connect/latest/adminguide/real-time-metrics-definitions.html">Real-time
Metrics Definitions</a> in the <em>Amazon Connect Administrator
Guide</em>.</p>
<p><strong>AGENTS_AFTER_CONTACT_WORK</strong></p>
<p>Unit: COUNT</p>
<p>Name in real-time metrics report: <a
href="https://docs.aws.amazon.com/connect/latest/adminguide/real-time-metrics-definitions.html#aftercallwork-real-time">ACW</a></p>
<p><strong>AGENTS_AVAILABLE</strong></p>
<p>Unit: COUNT</p>
<p>Name in real-time metrics report: <a
href="https://docs.aws.amazon.com/connect/latest/adminguide/real-time-metrics-definitions.html#available-real-time">Available</a></p>
<p><strong>AGENTS_ERROR</strong></p>
<p>Unit: COUNT</p>
<p>Name in real-time metrics report: <a
href="https://docs.aws.amazon.com/connect/latest/adminguide/real-time-metrics-definitions.html#error-real-time">Error</a></p>
<p><strong>AGENTS_NON_PRODUCTIVE</strong></p>
<p>Unit: COUNT</p>
<p>Name in real-time metrics report: <a
href="https://docs.aws.amazon.com/connect/latest/adminguide/real-time-metrics-definitions.html#non-productive-time-real-time">NPT
(Non-Productive Time)</a></p>
<p><strong>AGENTS_ON_CALL</strong></p>
<p>Unit: COUNT</p>
<p>Name in real-time metrics report: <a
href="https://docs.aws.amazon.com/connect/latest/adminguide/real-time-metrics-definitions.html#on-call-real-time">On
contact</a></p>
<p><strong>AGENTS_ON_CONTACT</strong></p>
<p>Unit: COUNT</p>
<p>Name in real-time metrics report: <a
href="https://docs.aws.amazon.com/connect/latest/adminguide/real-time-metrics-definitions.html#on-call-real-time">On
contact</a></p>
<p><strong>AGENTS_ONLINE</strong></p>
<p>Unit: COUNT</p>
<p>Name in real-time metrics report: <a
href="https://docs.aws.amazon.com/connect/latest/adminguide/real-time-metrics-definitions.html#online-real-time">Online</a></p>
<p><strong>AGENTS_STAFFED</strong></p>
<p>Unit: COUNT</p>
<p>Name in real-time metrics report: <a
href="https://docs.aws.amazon.com/connect/latest/adminguide/real-time-metrics-definitions.html#staffed-real-time">Staffed</a></p>
<p><strong>CONTACTS_IN_QUEUE</strong></p>
<p>Unit: COUNT</p>
<p>Name in real-time metrics report: <a
href="https://docs.aws.amazon.com/connect/latest/adminguide/real-time-metrics-definitions.html#in-queue-real-time">In
queue</a></p>
<p><strong>CONTACTS_SCHEDULED</strong></p>
<p>Unit: COUNT</p>
<p>Name in real-time metrics report: <a
href="https://docs.aws.amazon.com/connect/latest/adminguide/real-time-metrics-definitions.html#scheduled-real-time">Scheduled</a></p>
<p><strong>OLDEST_CONTACT_AGE</strong></p>
<p>Unit: SECONDS</p>
<p>When you use groupings, Unit says SECONDS and the Value is returned
in SECONDS.</p>
<p>When you do not use groupings, Unit says SECONDS but the Value is
returned in MILLISECONDS. For example, if you get a response like
this:</p>
<p><code
style="white-space: pre;">⁠\{ "Metric": \{ "Name": "OLDEST_CONTACT_AGE", "Unit": "SECONDS" \}, "Value": 24113.0 ⁠</code>}</p>
<p>The actual OLDEST_CONTACT_AGE is 24 seconds.</p>
<p>Name in real-time metrics report: <a
href="https://docs.aws.amazon.com/connect/latest/adminguide/real-time-metrics-definitions.html#oldest-real-time">Oldest</a></p>
<p><strong>SLOTS_ACTIVE</strong></p>
<p>Unit: COUNT</p>
<p>Name in real-time metrics report: <a
href="https://docs.aws.amazon.com/connect/latest/adminguide/real-time-metrics-definitions.html#active-real-time">Active</a></p>
<p><strong>SLOTS_AVAILABLE</strong></p>
<p>Unit: COUNT</p>
<p>Name in real-time metrics report: <a
href="https://docs.aws.amazon.com/connect/latest/adminguide/real-time-metrics-definitions.html#availability-real-time">Availability</a></p></td>
</tr>
<tr class="odd">
<td><code
id="connect_get_current_metric_data_:_NextToken">NextToken</code></td>
<td><p>The token for the next set of results. Use the value returned in
the previous response in the next request to retrieve the next set of
results.</p>
<p>The token expires after 5 minutes from the time it is created.
Subsequent requests that use the token must use the same request
parameters as the request that generated the token.</p></td>
</tr>
<tr class="even">
<td><code
id="connect_get_current_metric_data_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to return per page.</p></td>
</tr>
<tr class="odd">
<td><code
id="connect_get_current_metric_data_:_SortCriteria">SortCriteria</code></td>
<td><p>The way to sort the resulting response based on metrics. You can
enter one sort criteria. By default resources are sorted based on
<code>AGENTS_ONLINE</code>, <code>DESCENDING</code>. The metric
collection is sorted based on the input metrics.</p>
<p>Note the following:</p>
<ul>
<li><p>Sorting on <code>SLOTS_ACTIVE</code> and
<code>SLOTS_AVAILABLE</code> is not supported.</p></li>
</ul></td>
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
                Name = "AGENTS_ONLINE"|"AGENTS_AVAILABLE"|"AGENTS_ON_CALL"|"AGENTS_NON_PRODUCTIVE"|"AGENTS_AFTER_CONTACT_WORK"|"AGENTS_ERROR"|"AGENTS_STAFFED"|"CONTACTS_IN_QUEUE"|"OLDEST_CONTACT_AGE"|"CONTACTS_SCHEDULED"|"AGENTS_ON_CONTACT"|"SLOTS_ACTIVE"|"SLOTS_AVAILABLE",
                Unit = "SECONDS"|"COUNT"|"PERCENT"
              ),
              Value = 123.0
            )
          )
        )
      ),
      DataSnapshotTime = as.POSIXct(
        "2015-01-01"
      ),
      ApproximateTotalCount = 123
    )

### Request syntax

    svc$get_current_metric_data(
      InstanceId = "string",
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
      CurrentMetrics = list(
        list(
          Name = "AGENTS_ONLINE"|"AGENTS_AVAILABLE"|"AGENTS_ON_CALL"|"AGENTS_NON_PRODUCTIVE"|"AGENTS_AFTER_CONTACT_WORK"|"AGENTS_ERROR"|"AGENTS_STAFFED"|"CONTACTS_IN_QUEUE"|"OLDEST_CONTACT_AGE"|"CONTACTS_SCHEDULED"|"AGENTS_ON_CONTACT"|"SLOTS_ACTIVE"|"SLOTS_AVAILABLE",
          Unit = "SECONDS"|"COUNT"|"PERCENT"
        )
      ),
      NextToken = "string",
      MaxResults = 123,
      SortCriteria = list(
        list(
          SortByMetric = "AGENTS_ONLINE"|"AGENTS_AVAILABLE"|"AGENTS_ON_CALL"|"AGENTS_NON_PRODUCTIVE"|"AGENTS_AFTER_CONTACT_WORK"|"AGENTS_ERROR"|"AGENTS_STAFFED"|"CONTACTS_IN_QUEUE"|"OLDEST_CONTACT_AGE"|"CONTACTS_SCHEDULED"|"AGENTS_ON_CONTACT"|"SLOTS_ACTIVE"|"SLOTS_AVAILABLE",
          SortOrder = "ASCENDING"|"DESCENDING"
        )
      )
    )
