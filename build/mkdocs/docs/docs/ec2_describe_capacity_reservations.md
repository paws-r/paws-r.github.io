<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_describe_capacity_reservations</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes one or more of your Capacity Reservations

### Description

Describes one or more of your Capacity Reservations. The results
describe only the Capacity Reservations in the Amazon Web Services
Region that you're currently using.

### Usage

    ec2_describe_capacity_reservations(CapacityReservationIds, NextToken,
      MaxResults, Filters, DryRun)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_describe_capacity_reservations_:_CapacityReservationIds">CapacityReservationIds</code></td>
<td><p>The ID of the Capacity Reservation.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_describe_capacity_reservations_:_NextToken">NextToken</code></td>
<td><p>The token to use to retrieve the next page of results.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_describe_capacity_reservations_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to return for the request in a
single page. The remaining results can be seen by sending another
request with the returned <code>nextToken</code> value. This value can
be between 5 and 500. If <code>maxResults</code> is given a larger value
than 500, you receive an error.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_describe_capacity_reservations_:_Filters">Filters</code></td>
<td><p>One or more filters.</p>
<ul>
<li><p><code>instance-type</code> - The type of instance for which the
Capacity Reservation reserves capacity.</p></li>
<li><p><code>owner-id</code> - The ID of the Amazon Web Services account
that owns the Capacity Reservation.</p></li>
<li><p><code>instance-platform</code> - The type of operating system for
which the Capacity Reservation reserves capacity.</p></li>
<li><p><code>availability-zone</code> - The Availability Zone of the
Capacity Reservation.</p></li>
<li><p><code>tenancy</code> - Indicates the tenancy of the Capacity
Reservation. A Capacity Reservation can have one of the following
tenancy settings:</p>
<ul>
<li><p><code>default</code> - The Capacity Reservation is created on
hardware that is shared with other Amazon Web Services
accounts.</p></li>
<li><p><code>dedicated</code> - The Capacity Reservation is created on
single-tenant hardware that is dedicated to a single Amazon Web Services
account.</p></li>
</ul></li>
<li><p><code>outpost-arn</code> - The Amazon Resource Name (ARN) of the
Outpost on which the Capacity Reservation was created.</p></li>
<li><p><code>state</code> - The current state of the Capacity
Reservation. A Capacity Reservation can be in one of the following
states:</p>
<ul>
<li><p><code>active</code>- The Capacity Reservation is active and the
capacity is available for your use.</p></li>
<li><p><code>expired</code> - The Capacity Reservation expired
automatically at the date and time specified in your request. The
reserved capacity is no longer available for your use.</p></li>
<li><p><code>cancelled</code> - The Capacity Reservation was cancelled.
The reserved capacity is no longer available for your use.</p></li>
<li><p><code>pending</code> - The Capacity Reservation request was
successful but the capacity provisioning is still pending.</p></li>
<li><p><code>failed</code> - The Capacity Reservation request has
failed. A request might fail due to invalid request parameters, capacity
constraints, or instance limit constraints. Failed requests are retained
for 60 minutes.</p></li>
</ul></li>
<li><p><code>start-date</code> - The date and time at which the Capacity
Reservation was started.</p></li>
<li><p><code>end-date</code> - The date and time at which the Capacity
Reservation expires. When a Capacity Reservation expires, the reserved
capacity is released and you can no longer launch instances into it. The
Capacity Reservation's state changes to expired when it reaches its end
date and time.</p></li>
<li><p><code>end-date-type</code> - Indicates the way in which the
Capacity Reservation ends. A Capacity Reservation can have one of the
following end types:</p>
<ul>
<li><p><code>unlimited</code> - The Capacity Reservation remains active
until you explicitly cancel it.</p></li>
<li><p><code>limited</code> - The Capacity Reservation expires
automatically at a specified date and time.</p></li>
</ul></li>
<li><p><code>instance-match-criteria</code> - Indicates the type of
instance launches that the Capacity Reservation accepts. The options
include:</p>
<ul>
<li><p><code>open</code> - The Capacity Reservation accepts all
instances that have matching attributes (instance type, platform, and
Availability Zone). Instances that have matching attributes launch into
the Capacity Reservation automatically without specifying any additional
parameters.</p></li>
<li><p><code>targeted</code> - The Capacity Reservation only accepts
instances that have matching attributes (instance type, platform, and
Availability Zone), and explicitly target the Capacity Reservation. This
ensures that only permitted instances can use the reserved
capacity.</p></li>
</ul></li>
<li><p><code>placement-group-arn</code> - The ARN of the cluster
placement group in which the Capacity Reservation was created.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code
id="ec2_describe_capacity_reservations_:_DryRun">DryRun</code></td>
<td><p>Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      NextToken = "string",
      CapacityReservations = list(
        list(
          CapacityReservationId = "string",
          OwnerId = "string",
          CapacityReservationArn = "string",
          AvailabilityZoneId = "string",
          InstanceType = "string",
          InstancePlatform = "Linux/UNIX"|"Red Hat Enterprise Linux"|"SUSE Linux"|"Windows"|"Windows with SQL Server"|"Windows with SQL Server Enterprise"|"Windows with SQL Server Standard"|"Windows with SQL Server Web"|"Linux with SQL Server Standard"|"Linux with SQL Server Web"|"Linux with SQL Server Enterprise"|"RHEL with SQL Server Standard"|"RHEL with SQL Server Enterprise"|"RHEL with SQL Server Web"|"RHEL with HA"|"RHEL with HA and SQL Server Standard"|"RHEL with HA and SQL Server Enterprise",
          AvailabilityZone = "string",
          Tenancy = "default"|"dedicated",
          TotalInstanceCount = 123,
          AvailableInstanceCount = 123,
          EbsOptimized = TRUE|FALSE,
          EphemeralStorage = TRUE|FALSE,
          State = "active"|"expired"|"cancelled"|"pending"|"failed",
          StartDate = as.POSIXct(
            "2015-01-01"
          ),
          EndDate = as.POSIXct(
            "2015-01-01"
          ),
          EndDateType = "unlimited"|"limited",
          InstanceMatchCriteria = "open"|"targeted",
          CreateDate = as.POSIXct(
            "2015-01-01"
          ),
          Tags = list(
            list(
              Key = "string",
              Value = "string"
            )
          ),
          OutpostArn = "string",
          CapacityReservationFleetId = "string",
          PlacementGroupArn = "string",
          CapacityAllocations = list(
            list(
              AllocationType = "used",
              Count = 123
            )
          )
        )
      )
    )

### Request syntax

    svc$describe_capacity_reservations(
      CapacityReservationIds = list(
        "string"
      ),
      NextToken = "string",
      MaxResults = 123,
      Filters = list(
        list(
          Name = "string",
          Values = list(
            "string"
          )
        )
      ),
      DryRun = TRUE|FALSE
    )
