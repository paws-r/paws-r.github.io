<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_authorize_security_group_ingress</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Adds the specified inbound (ingress) rules to a security group

### Description

Adds the specified inbound (ingress) rules to a security group.

An inbound rule permits instances to receive traffic from the specified
IPv4 or IPv6 CIDR address range, or from the instances that are
associated with the specified destination security groups. When
specifying an inbound rule for your security group in a VPC, the
`IpPermissions` must include a source for the traffic.

You specify a protocol for each rule (for example, TCP). For TCP and
UDP, you must also specify the destination port or port range. For
ICMP/ICMPv6, you must also specify the ICMP/ICMPv6 type and code. You
can use -1 to mean all types or all codes.

Rule changes are propagated to instances within the security group as
quickly as possible. However, a small delay might occur.

For more information about VPC security group quotas, see [Amazon VPC
quotas](https://docs.aws.amazon.com/vpc/latest/userguide/amazon-vpc-limits.html).

We are retiring EC2-Classic. We recommend that you migrate from
EC2-Classic to a VPC. For more information, see [Migrate from
EC2-Classic to a
VPC](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/vpc-migrate.html)
in the *Amazon Elastic Compute Cloud User Guide*.

### Usage

    ec2_authorize_security_group_ingress(CidrIp, FromPort, GroupId,
      GroupName, IpPermissions, IpProtocol, SourceSecurityGroupName,
      SourceSecurityGroupOwnerId, ToPort, DryRun, TagSpecifications)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_authorize_security_group_ingress_:_CidrIp">CidrIp</code></td>
<td><p>The IPv4 address range, in CIDR format. You can't specify this
parameter when specifying a source security group. To specify an IPv6
address range, use a set of IP permissions.</p>
<p>Alternatively, use a set of IP permissions to specify multiple rules
and a description for the rule.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_authorize_security_group_ingress_:_FromPort">FromPort</code></td>
<td><p>If the protocol is TCP or UDP, this is the start of the port
range. If the protocol is ICMP, this is the type number. A value of -1
indicates all ICMP types. If you specify all ICMP types, you must
specify all ICMP codes.</p>
<p>Alternatively, use a set of IP permissions to specify multiple rules
and a description for the rule.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_authorize_security_group_ingress_:_GroupId">GroupId</code></td>
<td><p>The ID of the security group. You must specify either the
security group ID or the security group name in the request. For
security groups in a nondefault VPC, you must specify the security group
ID.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_authorize_security_group_ingress_:_GroupName">GroupName</code></td>
<td><p>[EC2-Classic, default VPC] The name of the security group. You
must specify either the security group ID or the security group name in
the request. For security groups in a nondefault VPC, you must specify
the security group ID.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_authorize_security_group_ingress_:_IpPermissions">IpPermissions</code></td>
<td><p>The sets of IP permissions.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_authorize_security_group_ingress_:_IpProtocol">IpProtocol</code></td>
<td><p>The IP protocol name (<code>tcp</code>, <code>udp</code>,
<code>icmp</code>) or number (see <a
href="http://www.iana.org/assignments/protocol-numbers/protocol-numbers.xhtml">Protocol
Numbers</a>). To specify <code>icmpv6</code>, use a set of IP
permissions.</p>
<p>[VPC only] Use <code>-1</code> to specify all protocols. If you
specify <code>-1</code> or a protocol other than <code>tcp</code>,
<code>udp</code>, or <code>icmp</code>, traffic on all ports is allowed,
regardless of any ports you specify.</p>
<p>Alternatively, use a set of IP permissions to specify multiple rules
and a description for the rule.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_authorize_security_group_ingress_:_SourceSecurityGroupName">SourceSecurityGroupName</code></td>
<td><p>[EC2-Classic, default VPC] The name of the source security group.
You can't specify this parameter in combination with the following
parameters: the CIDR IP address range, the start of the port range, the
IP protocol, and the end of the port range. Creates rules that grant
full ICMP, UDP, and TCP access. To create a rule with a specific IP
protocol and port range, use a set of IP permissions instead. For
EC2-VPC, the source security group must be in the same VPC.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_authorize_security_group_ingress_:_SourceSecurityGroupOwnerId">SourceSecurityGroupOwnerId</code></td>
<td><p>[nondefault VPC] The Amazon Web Services account ID for the
source security group, if the source security group is in a different
account. You can't specify this parameter in combination with the
following parameters: the CIDR IP address range, the IP protocol, the
start of the port range, and the end of the port range. Creates rules
that grant full ICMP, UDP, and TCP access. To create a rule with a
specific IP protocol and port range, use a set of IP permissions
instead.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_authorize_security_group_ingress_:_ToPort">ToPort</code></td>
<td><p>If the protocol is TCP or UDP, this is the end of the port range.
If the protocol is ICMP, this is the code. A value of -1 indicates all
ICMP codes. If you specify all ICMP types, you must specify all ICMP
codes.</p>
<p>Alternatively, use a set of IP permissions to specify multiple rules
and a description for the rule.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_authorize_security_group_ingress_:_DryRun">DryRun</code></td>
<td><p>Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_authorize_security_group_ingress_:_TagSpecifications">TagSpecifications</code></td>
<td><p>[VPC Only] The tags applied to the security group rule.</p></td>
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

    svc$authorize_security_group_ingress(
      CidrIp = "string",
      FromPort = 123,
      GroupId = "string",
      GroupName = "string",
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
      IpProtocol = "string",
      SourceSecurityGroupName = "string",
      SourceSecurityGroupOwnerId = "string",
      ToPort = 123,
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

### Examples

    ## Not run: 
    # This example enables inbound traffic on TCP port 22 (SSH). The rule
    # includes a description to help you identify it later.
    svc$authorize_security_group_ingress(
      GroupId = "sg-903004f8",
      IpPermissions = list(
        list(
          FromPort = 22L,
          IpProtocol = "tcp",
          IpRanges = list(
            list(
              CidrIp = "203.0.113.0/24",
              Description = "SSH access from the LA office"
            )
          ),
          ToPort = 22L
        )
      )
    )

    # This example enables inbound traffic on TCP port 80 from the specified
    # security group. The group must be in the same VPC or a peer VPC.
    # Incoming traffic is allowed based on the private IP addresses of
    # instances that are associated with the specified security group.
    svc$authorize_security_group_ingress(
      GroupId = "sg-111aaa22",
      IpPermissions = list(
        list(
          FromPort = 80L,
          IpProtocol = "tcp",
          ToPort = 80L,
          UserIdGroupPairs = list(
            list(
              Description = "HTTP access from other instances",
              GroupId = "sg-1a2b3c4d"
            )
          )
        )
      )
    )

    # This example adds an inbound rule that allows RDP traffic from the
    # specified IPv6 address range. The rule includes a description to help
    # you identify it later.
    svc$authorize_security_group_ingress(
      GroupId = "sg-123abc12 ",
      IpPermissions = list(
        list(
          FromPort = 3389L,
          IpProtocol = "tcp",
          Ipv6Ranges = list(
            list(
              CidrIpv6 = "2001:db8:1234:1a00::/64",
              Description = "RDP access from the NY office"
            )
          ),
          ToPort = 3389L
        )
      )
    )

    ## End(Not run)
