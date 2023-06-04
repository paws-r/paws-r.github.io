<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_describe_scheduled_instance_availability</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Finds available schedules that meet the specified criteria

### Description

Finds available schedules that meet the specified criteria.

You can search for an available schedule no more than 3 months in
advance. You must meet the minimum required duration of 1,200 hours per
year. For example, the minimum daily schedule is 4 hours, the minimum
weekly schedule is 24 hours, and the minimum monthly schedule is 100
hours.

After you find a schedule that meets your needs, call
`purchase_scheduled_instances` to purchase Scheduled Instances with that
schedule.

### Usage

    ec2_describe_scheduled_instance_availability(DryRun, Filters,
      FirstSlotStartTimeRange, MaxResults, MaxSlotDurationInHours,
      MinSlotDurationInHours, NextToken, Recurrence)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_describe_scheduled_instance_availability_:_DryRun">DryRun</code></td>
<td><p>Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_describe_scheduled_instance_availability_:_Filters">Filters</code></td>
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
id="ec2_describe_scheduled_instance_availability_:_FirstSlotStartTimeRange">FirstSlotStartTimeRange</code></td>
<td><p>[required] The time period for the first schedule to
start.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_describe_scheduled_instance_availability_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to return in a single call. This
value can be between 5 and 300. The default value is 300. To retrieve
the remaining results, make another call with the returned
<code>NextToken</code> value.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_describe_scheduled_instance_availability_:_MaxSlotDurationInHours">MaxSlotDurationInHours</code></td>
<td><p>The maximum available duration, in hours. This value must be
greater than <code>MinSlotDurationInHours</code> and less than
1,720.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_describe_scheduled_instance_availability_:_MinSlotDurationInHours">MinSlotDurationInHours</code></td>
<td><p>The minimum available duration, in hours. The minimum required
duration is 1,200 hours per year. For example, the minimum daily
schedule is 4 hours, the minimum weekly schedule is 24 hours, and the
minimum monthly schedule is 100 hours.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_describe_scheduled_instance_availability_:_NextToken">NextToken</code></td>
<td><p>The token for the next set of results.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_describe_scheduled_instance_availability_:_Recurrence">Recurrence</code></td>
<td><p>[required] The schedule recurrence.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      NextToken = "string",
      ScheduledInstanceAvailabilitySet = list(
        list(
          AvailabilityZone = "string",
          AvailableInstanceCount = 123,
          FirstSlotStartTime = as.POSIXct(
            "2015-01-01"
          ),
          HourlyPrice = "string",
          InstanceType = "string",
          MaxTermDurationInDays = 123,
          MinTermDurationInDays = 123,
          NetworkPlatform = "string",
          Platform = "string",
          PurchaseToken = "string",
          Recurrence = list(
            Frequency = "string",
            Interval = 123,
            OccurrenceDaySet = list(
              123
            ),
            OccurrenceRelativeToEnd = TRUE|FALSE,
            OccurrenceUnit = "string"
          ),
          SlotDurationInHours = 123,
          TotalScheduledInstanceHours = 123
        )
      )
    )

### Request syntax

    svc$describe_scheduled_instance_availability(
      DryRun = TRUE|FALSE,
      Filters = list(
        list(
          Name = "string",
          Values = list(
            "string"
          )
        )
      ),
      FirstSlotStartTimeRange = list(
        EarliestTime = as.POSIXct(
          "2015-01-01"
        ),
        LatestTime = as.POSIXct(
          "2015-01-01"
        )
      ),
      MaxResults = 123,
      MaxSlotDurationInHours = 123,
      MinSlotDurationInHours = 123,
      NextToken = "string",
      Recurrence = list(
        Frequency = "string",
        Interval = 123,
        OccurrenceDays = list(
          123
        ),
        OccurrenceRelativeToEnd = TRUE|FALSE,
        OccurrenceUnit = "string"
      )
    )

### Examples

    ## Not run: 
    # This example describes a schedule that occurs every week on Sunday,
    # starting on the specified date. Note that the output contains a single
    # schedule as an example.
    svc$describe_scheduled_instance_availability(
      FirstSlotStartTimeRange = list(
        EarliestTime = "2016-01-31T00:00:00Z",
        LatestTime = "2016-01-31T04:00:00Z"
      ),
      Recurrence = list(
        Frequency = "Weekly",
        Interval = 1L,
        OccurrenceDays = list(
          1L
        )
      )
    )

    ## End(Not run)
