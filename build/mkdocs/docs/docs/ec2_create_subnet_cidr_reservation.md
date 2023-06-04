<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_create_subnet_cidr_reservation</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a subnet CIDR reservation

### Description

Creates a subnet CIDR reservation. For information about subnet CIDR
reservations, see [Subnet CIDR
reservations](https://docs.aws.amazon.com/vpc/latest/userguide/subnet-cidr-reservation.html)
in the *Amazon Virtual Private Cloud User Guide*.

### Usage

    ec2_create_subnet_cidr_reservation(SubnetId, Cidr, ReservationType,
      Description, DryRun, TagSpecifications)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_create_subnet_cidr_reservation_:_SubnetId">SubnetId</code></td>
<td><p>[required] The ID of the subnet.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_create_subnet_cidr_reservation_:_Cidr">Cidr</code></td>
<td><p>[required] The IPv4 or IPV6 CIDR range to reserve.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_create_subnet_cidr_reservation_:_ReservationType">ReservationType</code></td>
<td><p>[required] The type of reservation.</p>
<p>The following are valid values:</p>
<ul>
<li><p><code>prefix</code>: The Amazon EC2 Prefix Delegation feature
assigns the IP addresses to network interfaces that are associated with
an instance. For information about Prefix Delegation, see <a
href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/">Prefix
Delegation for Amazon EC2 network interfaces</a> in the <em>Amazon
Elastic Compute Cloud User Guide</em>.</p></li>
<li><p><code>explicit</code>: You manually assign the IP addresses to
resources that reside in your subnet.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="ec2_create_subnet_cidr_reservation_:_Description">Description</code></td>
<td><p>The description to assign to the subnet CIDR
reservation.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_create_subnet_cidr_reservation_:_DryRun">DryRun</code></td>
<td><p>Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_create_subnet_cidr_reservation_:_TagSpecifications">TagSpecifications</code></td>
<td><p>The tags to assign to the subnet CIDR reservation.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      SubnetCidrReservation = list(
        SubnetCidrReservationId = "string",
        SubnetId = "string",
        Cidr = "string",
        ReservationType = "prefix"|"explicit",
        OwnerId = "string",
        Description = "string",
        Tags = list(
          list(
            Key = "string",
            Value = "string"
          )
        )
      )
    )

### Request syntax

    svc$create_subnet_cidr_reservation(
      SubnetId = "string",
      Cidr = "string",
      ReservationType = "prefix"|"explicit",
      Description = "string",
      DryRun = TRUE|FALSE,
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
      )
    )
