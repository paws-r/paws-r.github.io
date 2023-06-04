<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_describe_scheduled_instances</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes the specified Scheduled Instances or all your Scheduled Instances

### Description

Describes the specified Scheduled Instances or all your Scheduled
Instances.

### Usage

    ec2_describe_scheduled_instances(DryRun, Filters, MaxResults, NextToken,
      ScheduledInstanceIds, SlotStartTimeRange)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_describe_scheduled_instances_:_DryRun">DryRun</code></td>
<td><p>Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_describe_scheduled_instances_:_Filters">Filters</code></td>
<td><p>The filters.</p>
<ul>
<li><p><code>availability-zone</code> - The Availability Zone (for
example, <code style="white-space: pre;">⁠us-west-2a⁠</code>).</p></li>
<li><p><code>instance-type</code> - The instance type (for example,
<code>c4.large</code>).</p></li>
<li><p><code>platform</code> - The platform (<code>Linux/UNIX</code> or
<code>Windows</code>).</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code
id="ec2_describe_scheduled_instances_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to return in a single call. This
value can be between 5 and 300. The default value is 100. To retrieve
the remaining results, make another call with the returned
<code>NextToken</code> value.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_describe_scheduled_instances_:_NextToken">NextToken</code></td>
<td><p>The token for the next set of results.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_describe_scheduled_instances_:_ScheduledInstanceIds">ScheduledInstanceIds</code></td>
<td><p>The Scheduled Instance IDs.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_describe_scheduled_instances_:_SlotStartTimeRange">SlotStartTimeRange</code></td>
<td><p>The time period for the first schedule to start.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      NextToken = "string",
      ScheduledInstanceSet = list(
        list(
          AvailabilityZone = "string",
          CreateDate = as.POSIXct(
            "2015-01-01"
          ),
          HourlyPrice = "string",
          InstanceCount = 123,
          InstanceType = "string",
          NetworkPlatform = "string",
          NextSlotStartTime = as.POSIXct(
            "2015-01-01"
          ),
          Platform = "string",
          PreviousSlotEndTime = as.POSIXct(
            "2015-01-01"
          ),
          Recurrence = list(
            Frequency = "string",
            Interval = 123,
            OccurrenceDaySet = list(
              123
            ),
            OccurrenceRelativeToEnd = TRUE|FALSE,
            OccurrenceUnit = "string"
          ),
          ScheduledInstanceId = "string",
          SlotDurationInHours = 123,
          TermEndDate = as.POSIXct(
            "2015-01-01"
          ),
          TermStartDate = as.POSIXct(
            "2015-01-01"
          ),
          TotalScheduledInstanceHours = 123
        )
      )
    )

### Request syntax

    svc$describe_scheduled_instances(
      DryRun = TRUE|FALSE,
      Filters = list(
        list(
          Name = "string",
          Values = list(
            "string"
          )
        )
      ),
      MaxResults = 123,
      NextToken = "string",
      ScheduledInstanceIds = list(
        "string"
      ),
      SlotStartTimeRange = list(
        EarliestTime = as.POSIXct(
          "2015-01-01"
        ),
        LatestTime = as.POSIXct(
          "2015-01-01"
        )
      )
    )

### Examples

    ## Not run: 
    # This example describes the specified Scheduled Instance.
    svc$describe_scheduled_instances(
      ScheduledInstanceIds = list(
        "sci-1234-1234-1234-1234-123456789012"
      )
    )

    ## End(Not run)
