<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_revoke_security_group_egress</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## \[VPC only\] Removes the specified outbound (egress) rules from a security group for EC2-VPC

### Description

\[VPC only\] Removes the specified outbound (egress) rules from a
security group for EC2-VPC. This action does not apply to security
groups for use in EC2-Classic.

You can specify rules using either rule IDs or security group rule
properties. If you use rule properties, the values that you specify (for
example, ports) must match the existing rule's values exactly. Each rule
has a protocol, from and to ports, and destination (CIDR range, security
group, or prefix list). For the TCP and UDP protocols, you must also
specify the destination port or range of ports. For the ICMP protocol,
you must also specify the ICMP type and code. If the security group rule
has a description, you do not need to specify the description to revoke
the rule.

\[Default VPC\] If the values you specify do not match the existing
rule's values, no error is returned, and the output describes the
security group rules that were not revoked.

Amazon Web Services recommends that you describe the security group to
verify that the rules were removed.

Rule changes are propagated to instances within the security group as
quickly as possible. However, a small delay might occur.

### Usage

    ec2_revoke_security_group_egress(DryRun, GroupId, IpPermissions,
      SecurityGroupRuleIds, CidrIp, FromPort, IpProtocol, ToPort,
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
id="ec2_revoke_security_group_egress_:_DryRun">DryRun</code></td>
<td><p>Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_revoke_security_group_egress_:_GroupId">GroupId</code></td>
<td><p>[required] The ID of the security group.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_revoke_security_group_egress_:_IpPermissions">IpPermissions</code></td>
<td><p>The sets of IP permissions. You can't specify a destination
security group and a CIDR IP address range in the same set of
permissions.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_revoke_security_group_egress_:_SecurityGroupRuleIds">SecurityGroupRuleIds</code></td>
<td><p>The IDs of the security group rules.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_revoke_security_group_egress_:_CidrIp">CidrIp</code></td>
<td><p>Not supported. Use a set of IP permissions to specify the
CIDR.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_revoke_security_group_egress_:_FromPort">FromPort</code></td>
<td><p>Not supported. Use a set of IP permissions to specify the
port.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_revoke_security_group_egress_:_IpProtocol">IpProtocol</code></td>
<td><p>Not supported. Use a set of IP permissions to specify the
protocol name or number.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_revoke_security_group_egress_:_ToPort">ToPort</code></td>
<td><p>Not supported. Use a set of IP permissions to specify the
port.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_revoke_security_group_egress_:_SourceSecurityGroupName">SourceSecurityGroupName</code></td>
<td><p>Not supported. Use a set of IP permissions to specify a
destination security group.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_revoke_security_group_egress_:_SourceSecurityGroupOwnerId">SourceSecurityGroupOwnerId</code></td>
<td><p>Not supported. Use a set of IP permissions to specify a
destination security group.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Return = TRUE|FALSE,
      UnknownIpPermissions = list(
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
      )
    )

### Request syntax

    svc$revoke_security_group_egress(
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
      SecurityGroupRuleIds = list(
        "string"
      ),
      CidrIp = "string",
      FromPort = 123,
      IpProtocol = "string",
      ToPort = 123,
      SourceSecurityGroupName = "string",
      SourceSecurityGroupOwnerId = "string"
    )
