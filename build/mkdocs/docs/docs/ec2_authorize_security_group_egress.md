<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_authorize_security_group_egress</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## \[VPC only\] Adds the specified outbound (egress) rules to a security group for use with a VPC

### Description

\[VPC only\] Adds the specified outbound (egress) rules to a security
group for use with a VPC.

An outbound rule permits instances to send traffic to the specified IPv4
or IPv6 CIDR address ranges, or to the instances that are associated
with the specified source security groups. When specifying an outbound
rule for your security group in a VPC, the `IpPermissions` must include
a destination for the traffic.

You specify a protocol for each rule (for example, TCP). For the TCP and
UDP protocols, you must also specify the destination port or port range.
For the ICMP protocol, you must also specify the ICMP type and code. You
can use -1 for the type or code to mean all types or all codes.

Rule changes are propagated to affected instances as quickly as
possible. However, a small delay might occur.

For information about VPC security group quotas, see [Amazon VPC
quotas](https://docs.aws.amazon.com/vpc/latest/userguide/amazon-vpc-limits.html).

### Usage

    ec2_authorize_security_group_egress(DryRun, GroupId, IpPermissions,
      TagSpecifications, CidrIp, FromPort, IpProtocol, ToPort,
      SourceSecurityGroupName, SourceSecurityGroupOwnerId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_authorize_security_group_egress_:_DryRun">DryRun</code></td>
<td><p>Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_authorize_security_group_egress_:_GroupId">GroupId</code></td>
<td><p>[required] The ID of the security group.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_authorize_security_group_egress_:_IpPermissions">IpPermissions</code></td>
<td><p>The sets of IP permissions. You can't specify a destination
security group and a CIDR IP address range in the same set of
permissions.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_authorize_security_group_egress_:_TagSpecifications">TagSpecifications</code></td>
<td><p>The tags applied to the security group rule.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_authorize_security_group_egress_:_CidrIp">CidrIp</code></td>
<td><p>Not supported. Use a set of IP permissions to specify the
CIDR.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_authorize_security_group_egress_:_FromPort">FromPort</code></td>
<td><p>Not supported. Use a set of IP permissions to specify the
port.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_authorize_security_group_egress_:_IpProtocol">IpProtocol</code></td>
<td><p>Not supported. Use a set of IP permissions to specify the
protocol name or number.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_authorize_security_group_egress_:_ToPort">ToPort</code></td>
<td><p>Not supported. Use a set of IP permissions to specify the
port.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_authorize_security_group_egress_:_SourceSecurityGroupName">SourceSecurityGroupName</code></td>
<td><p>Not supported. Use a set of IP permissions to specify a
destination security group.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_authorize_security_group_egress_:_SourceSecurityGroupOwnerId">SourceSecurityGroupOwnerId</code></td>
<td><p>Not supported. Use a set of IP permissions to specify a
destination security group.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Return = TRUE|FALSE,
      SecurityGroupRules = list(
        list(
          SecurityGroupRuleId = "string",
          GroupId = "string",
          GroupOwnerId = "string",
          IsEgress = TRUE|FALSE,
          IpProtocol = "string",
          FromPort = 123,
          ToPort = 123,
          CidrIpv4 = "string",
          CidrIpv6 = "string",
          PrefixListId = "string",
          ReferencedGroupInfo = list(
            GroupId = "string",
            PeeringStatus = "string",
            UserId = "string",
            VpcId = "string",
            VpcPeeringConnectionId = "string"
          ),
          Description = "string",
          Tags = list(
            list(
              Key = "string",
              Value = "string"
            )
          )
        )
      )
    )

### Request syntax

    svc$authorize_security_group_egress(
      DryRun = TRUE|FALSE,
      GroupId = "string",
      IpPermissions = list(
        list(
          FromPort = 123,
          IpProtocol = "string",
          IpRanges = list(
            list(
              CidrIp = "string",
              Description = "string"
            )
          ),
          Ipv6Ranges = list(
            list(
              CidrIpv6 = "string",
              Description = "string"
            )
          ),
          PrefixListIds = list(
            list(
              Description = "string",
              PrefixListId = "string"
            )
          ),
          ToPort = 123,
          UserIdGroupPairs = list(
            list(
              Description = "string",
              GroupId = "string",
              GroupName = "string",
              PeeringStatus = "string",
              UserId = "string",
              VpcId = "string",
              VpcPeeringConnectionId = "string"
            )
          )
        )
      ),
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
      CidrIp = "string",
      FromPort = 123,
      IpProtocol = "string",
      ToPort = 123,
      SourceSecurityGroupName = "string",
      SourceSecurityGroupOwnerId = "string"
    )

### Examples

    ## Not run: 
    # This example adds a rule that grants access to the specified address
    # ranges on TCP port 80.
    svc$authorize_security_group_egress(
      GroupId = "sg-1a2b3c4d",
      IpPermissions = list(
        list(
          FromPort = 80L,
          IpProtocol = "tcp",
          IpRanges = list(
            list(
              CidrIp = "10.0.0.0/16"
            )
          ),
          ToPort = 80L
        )
      )
    )

    # This example adds a rule that grants access to the specified security
    # group on TCP port 80.
    svc$authorize_security_group_egress(
      GroupId = "sg-1a2b3c4d",
      IpPermissions = list(
        list(
          FromPort = 80L,
          IpProtocol = "tcp",
          ToPort = 80L,
          UserIdGroupPairs = list(
            list(
              GroupId = "sg-4b51a32f"
            )
          )
        )
      )
    )

    ## End(Not run)
