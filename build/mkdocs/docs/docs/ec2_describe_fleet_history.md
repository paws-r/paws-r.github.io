<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_describe_fleet_history</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes the events for the specified EC2 Fleet during the specified time

### Description

Describes the events for the specified EC2 Fleet during the specified
time.

EC2 Fleet events are delayed by up to 30 seconds before they can be
described. This ensures that you can query by the last evaluated time
and not miss a recorded event. EC2 Fleet events are available for 48
hours.

For more information, see [Monitor fleet events using Amazon
EventBridge](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/fleet-monitor.html)
in the *Amazon EC2 User Guide*.

### Usage

    ec2_describe_fleet_history(DryRun, EventType, MaxResults, NextToken,
      FleetId, StartTime)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ec2_describe_fleet_history_:_DryRun">DryRun</code></td>
<td><p>Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_describe_fleet_history_:_EventType">EventType</code></td>
<td><p>The type of events to describe. By default, all events are
described.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_describe_fleet_history_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of items to return for this request. To get
the next page of items, make another request with the token returned in
the output. For more information, see <a
href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Query-Requests.html#api-pagination">Pagination</a>.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_describe_fleet_history_:_NextToken">NextToken</code></td>
<td><p>The token returned from a previous paginated request. Pagination
continues from the end of the items returned by the previous
request.</p></td>
</tr>
<tr class="odd">
<td><code id="ec2_describe_fleet_history_:_FleetId">FleetId</code></td>
<td><p>[required] The ID of the EC2 Fleet.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_describe_fleet_history_:_StartTime">StartTime</code></td>
<td><p>[required] The start date and time for the events, in UTC format
(for example,
<em>YYYY</em>-<em>MM</em>-<em>DD</em>T<em>HH</em>:<em>MM</em>:<em>SS</em>Z).</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      HistoryRecords = list(
        list(
          EventInformation = list(
            EventDescription = "string",
            EventSubType = "string",
            InstanceId = "string"
          ),
          EventType = "instance-change"|"fleet-change"|"service-error",
          Timestamp = as.POSIXct(
            "2015-01-01"
          )
        )
      ),
      LastEvaluatedTime = as.POSIXct(
        "2015-01-01"
      ),
      NextToken = "string",
      FleetId = "string",
      StartTime = as.POSIXct(
        "2015-01-01"
      )
    )

### Request syntax

    svc$describe_fleet_history(
      DryRun = TRUE|FALSE,
      EventType = "instance-change"|"fleet-change"|"service-error",
      MaxResults = 123,
      NextToken = "string",
      FleetId = "string",
      StartTime = as.POSIXct(
        "2015-01-01"
      )
    )
