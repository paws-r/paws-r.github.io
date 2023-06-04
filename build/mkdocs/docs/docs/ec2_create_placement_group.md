<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_create_placement_group</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a placement group in which to launch instances

### Description

Creates a placement group in which to launch instances. The strategy of
the placement group determines how the instances are organized within
the group.

A `cluster` placement group is a logical grouping of instances within a
single Availability Zone that benefit from low network latency, high
network throughput. A `spread` placement group places instances on
distinct hardware. A `partition` placement group places groups of
instances in different partitions, where instances in one partition do
not share the same hardware with instances in another partition.

For more information, see [Placement
groups](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/placement-groups.html)
in the *Amazon EC2 User Guide*.

### Usage

    ec2_create_placement_group(DryRun, GroupName, Strategy, PartitionCount,
      TagSpecifications, SpreadLevel)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ec2_create_placement_group_:_DryRun">DryRun</code></td>
<td><p>Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_create_placement_group_:_GroupName">GroupName</code></td>
<td><p>A name for the placement group. Must be unique within the scope
of your account for the Region.</p>
<p>Constraints: Up to 255 ASCII characters</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_create_placement_group_:_Strategy">Strategy</code></td>
<td><p>The placement strategy.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_create_placement_group_:_PartitionCount">PartitionCount</code></td>
<td><p>The number of partitions. Valid only when
<strong>Strategy</strong> is set to <code>partition</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_create_placement_group_:_TagSpecifications">TagSpecifications</code></td>
<td><p>The tags to apply to the new placement group.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_create_placement_group_:_SpreadLevel">SpreadLevel</code></td>
<td><p>Determines how placement groups spread instances.</p>
<ul>
<li><p>Host – You can use <code>host</code> only with Outpost placement
groups.</p></li>
<li><p>Rack – No usage restrictions.</p></li>
</ul></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      PlacementGroup = list(
        GroupName = "string",
        State = "pending"|"available"|"deleting"|"deleted",
        Strategy = "cluster"|"spread"|"partition",
        PartitionCount = 123,
        GroupId = "string",
        Tags = list(
          list(
            Key = "string",
            Value = "string"
          )
        ),
        GroupArn = "string",
        SpreadLevel = "host"|"rack"
      )
    )

### Request syntax

    svc$create_placement_group(
      DryRun = TRUE|FALSE,
      GroupName = "string",
      Strategy = "cluster"|"spread"|"partition",
      PartitionCount = 123,
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
      SpreadLevel = "host"|"rack"
    )

### Examples

    ## Not run: 
    # This example creates a placement group with the specified name.
    svc$create_placement_group(
      GroupName = "my-cluster",
      Strategy = "cluster"
    )

    ## End(Not run)
