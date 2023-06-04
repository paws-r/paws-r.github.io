<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_create_capacity_reservation</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a new Capacity Reservation with the specified attributes

### Description

Creates a new Capacity Reservation with the specified attributes.

Capacity Reservations enable you to reserve capacity for your Amazon EC2
instances in a specific Availability Zone for any duration. This gives
you the flexibility to selectively add capacity reservations and still
get the Regional RI discounts for that usage. By creating Capacity
Reservations, you ensure that you always have access to Amazon EC2
capacity when you need it, for as long as you need it. For more
information, see [Capacity
Reservations](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-capacity-reservations.html)
in the *Amazon EC2 User Guide*.

Your request to create a Capacity Reservation could fail if Amazon EC2
does not have sufficient capacity to fulfill the request. If your
request fails due to Amazon EC2 capacity constraints, either try again
at a later time, try in a different Availability Zone, or request a
smaller capacity reservation. If your application is flexible across
instance types and sizes, try to create a Capacity Reservation with
different instance attributes.

Your request could also fail if the requested quantity exceeds your
On-Demand Instance limit for the selected instance type. If your request
fails due to limit constraints, increase your On-Demand Instance limit
for the required instance type and try again. For more information about
increasing your instance limits, see [Amazon EC2 Service
Quotas](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-resource-limits.html)
in the *Amazon EC2 User Guide*.

### Usage

    ec2_create_capacity_reservation(ClientToken, InstanceType,
      InstancePlatform, AvailabilityZone, AvailabilityZoneId, Tenancy,
      InstanceCount, EbsOptimized, EphemeralStorage, EndDate, EndDateType,
      InstanceMatchCriteria, TagSpecifications, DryRun, OutpostArn,
      PlacementGroupArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_create_capacity_reservation_:_ClientToken">ClientToken</code></td>
<td><p>Unique, case-sensitive identifier that you provide to ensure the
idempotency of the request. For more information, see <a
href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">Ensure
Idempotency</a>.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_create_capacity_reservation_:_InstanceType">InstanceType</code></td>
<td><p>[required] The instance type for which to reserve capacity. For
more information, see <a
href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html">Instance
types</a> in the <em>Amazon EC2 User Guide</em>.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_create_capacity_reservation_:_InstancePlatform">InstancePlatform</code></td>
<td><p>[required] The type of operating system for which to reserve
capacity.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_create_capacity_reservation_:_AvailabilityZone">AvailabilityZone</code></td>
<td><p>The Availability Zone in which to create the Capacity
Reservation.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_create_capacity_reservation_:_AvailabilityZoneId">AvailabilityZoneId</code></td>
<td><p>The ID of the Availability Zone in which to create the Capacity
Reservation.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_create_capacity_reservation_:_Tenancy">Tenancy</code></td>
<td><p>Indicates the tenancy of the Capacity Reservation. A Capacity
Reservation can have one of the following tenancy settings:</p>
<ul>
<li><p><code>default</code> - The Capacity Reservation is created on
hardware that is shared with other Amazon Web Services
accounts.</p></li>
<li><p><code>dedicated</code> - The Capacity Reservation is created on
single-tenant hardware that is dedicated to a single Amazon Web Services
account.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code
id="ec2_create_capacity_reservation_:_InstanceCount">InstanceCount</code></td>
<td><p>[required] The number of instances for which to reserve
capacity.</p>
<p>Valid range: 1 - 1000</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_create_capacity_reservation_:_EbsOptimized">EbsOptimized</code></td>
<td><p>Indicates whether the Capacity Reservation supports EBS-optimized
instances. This optimization provides dedicated throughput to Amazon EBS
and an optimized configuration stack to provide optimal I/O performance.
This optimization isn't available with all instance types. Additional
usage charges apply when using an EBS- optimized instance.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_create_capacity_reservation_:_EphemeralStorage">EphemeralStorage</code></td>
<td><p><em>Deprecated.</em></p></td>
</tr>
<tr class="even">
<td><code
id="ec2_create_capacity_reservation_:_EndDate">EndDate</code></td>
<td><p>The date and time at which the Capacity Reservation expires. When
a Capacity Reservation expires, the reserved capacity is released and
you can no longer launch instances into it. The Capacity Reservation's
state changes to <code>expired</code> when it reaches its end date and
time.</p>
<p>You must provide an <code>EndDate</code> value if
<code>EndDateType</code> is <code>limited</code>. Omit
<code>EndDate</code> if <code>EndDateType</code> is
<code>unlimited</code>.</p>
<p>If the <code>EndDateType</code> is <code>limited</code>, the Capacity
Reservation is cancelled within an hour from the specified time. For
example, if you specify 5/31/2019, 13:30:55, the Capacity Reservation is
guaranteed to end between 13:30:55 and 14:30:55 on 5/31/2019.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_create_capacity_reservation_:_EndDateType">EndDateType</code></td>
<td><p>Indicates the way in which the Capacity Reservation ends. A
Capacity Reservation can have one of the following end types:</p>
<ul>
<li><p><code>unlimited</code> - The Capacity Reservation remains active
until you explicitly cancel it. Do not provide an <code>EndDate</code>
if the <code>EndDateType</code> is <code>unlimited</code>.</p></li>
<li><p><code>limited</code> - The Capacity Reservation expires
automatically at a specified date and time. You must provide an
<code>EndDate</code> value if the <code>EndDateType</code> value is
<code>limited</code>.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="ec2_create_capacity_reservation_:_InstanceMatchCriteria">InstanceMatchCriteria</code></td>
<td><p>Indicates the type of instance launches that the Capacity
Reservation accepts. The options include:</p>
<ul>
<li><p><code>open</code> - The Capacity Reservation automatically
matches all instances that have matching attributes (instance type,
platform, and Availability Zone). Instances that have matching
attributes run in the Capacity Reservation automatically without
specifying any additional parameters.</p></li>
<li><p><code>targeted</code> - The Capacity Reservation only accepts
instances that have matching attributes (instance type, platform, and
Availability Zone), and explicitly target the Capacity Reservation. This
ensures that only permitted instances can use the reserved
capacity.</p></li>
</ul>
<p>Default: <code>open</code></p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_create_capacity_reservation_:_TagSpecifications">TagSpecifications</code></td>
<td><p>The tags to apply to the Capacity Reservation during
launch.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_create_capacity_reservation_:_DryRun">DryRun</code></td>
<td><p>Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_create_capacity_reservation_:_OutpostArn">OutpostArn</code></td>
<td><p>The Amazon Resource Name (ARN) of the Outpost on which to create
the Capacity Reservation.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_create_capacity_reservation_:_PlacementGroupArn">PlacementGroupArn</code></td>
<td><p>The Amazon Resource Name (ARN) of the cluster placement group in
which to create the Capacity Reservation. For more information, see <a
href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/cr-cpg.html">Capacity
Reservations for cluster placement groups</a> in the <em>Amazon EC2 User
Guide</em>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      CapacityReservation = list(
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

### Request syntax

    svc$create_capacity_reservation(
      ClientToken = "string",
      InstanceType = "string",
      InstancePlatform = "Linux/UNIX"|"Red Hat Enterprise Linux"|"SUSE Linux"|"Windows"|"Windows with SQL Server"|"Windows with SQL Server Enterprise"|"Windows with SQL Server Standard"|"Windows with SQL Server Web"|"Linux with SQL Server Standard"|"Linux with SQL Server Web"|"Linux with SQL Server Enterprise"|"RHEL with SQL Server Standard"|"RHEL with SQL Server Enterprise"|"RHEL with SQL Server Web"|"RHEL with HA"|"RHEL with HA and SQL Server Standard"|"RHEL with HA and SQL Server Enterprise",
      AvailabilityZone = "string",
      AvailabilityZoneId = "string",
      Tenancy = "default"|"dedicated",
      InstanceCount = 123,
      EbsOptimized = TRUE|FALSE,
      EphemeralStorage = TRUE|FALSE,
      EndDate = as.POSIXct(
        "2015-01-01"
      ),
      EndDateType = "unlimited"|"limited",
      InstanceMatchCriteria = "open"|"targeted",
      TagSpecifications = list(
        list(
          ResourceType = "capacity-reservation"|"client-vpn-endpoint"|"customer-gateway"|"carrier-gateway"|"coip-pool"|"dedicated-host"|"dhcp-options"|"egress-only-internet-gateway"|"elastic-ip"|"elastic-gpu"|"export-image-task"|"export-instance-task"|"fleet"|"fpga-image"|"host-reservation"|"image"|"import-image-task"|"import-snapshot-task"|"instance"|"instance-event-window"|"internet-gateway"|"ipam"|"ipam-pool"|"ipam-scope"|"ipv4pool-ec2"|"ipv6pool-ec2"|"key-pair"|"launch-template"|"local-gateway"|"local-gateway-route-table"|"local-gateway-virtual-interface"|"local-gateway-virtual-interface-group"|"local-gateway-route-table-vpc-association"|"local-gateway-route-table-virtual-interface-group-association"|"natgateway"|"network-acl"|"network-interface"|"network-insights-analysis"|"network-insights-path"|"network-insights-access-scope"|"network-insights-access-scope-analysis"|"placement-group"|"prefix-list"|"replace-root-volume-task"|"reserved-instances"|"route-table"|"security-group"|"security-group-rule"|"snapshot"|"spot-fleet-request"|"spot-instances-request"|"subnet"|"subnet-cidr-reservation"|"traffic-mirror-filter"|"traffic-mirror-session"|"traffic-mirror-target"|"transit-gateway"|"transit-gateway-attachment"|"transit-gateway-connect-peer"|"transit-gateway-multicast-domain"|"transit-gateway-policy-table"|"transit-gateway-route-table"|"transit-gateway-route-table-announcement"|"volume"|"vpc"|"vpc-endpoint"|"vpc-endpoint-connection"|"vpc-endpoint-service"|"vpc-endpoint-service-permission"|"vpc-peering-connection"|"vpn-connection"|"vpn-gateway"|"vpc-flow-log"|"capacity-reservation-fleet"|"traffic-mirror-filter-rule"|"vpc-endpoint-connection-device-type"|"verified-access-instance"|"verified-access-group"|"verified-access-endpoint"|"verified-access-policy"|"verified-access-trust-provider"|"vpn-connection-device-type"|"vpc-block-public-access-exclusion"|"ipam-resource-discovery"|"ipam-resource-discovery-association",
          Tags = list(
            list(
              Key = "string",
              Value = "string"
            )
          )
        )
      ),
      DryRun = TRUE|FALSE,
      OutpostArn = "string",
      PlacementGroupArn = "string"
    )
