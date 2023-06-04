<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_revoke_security_group_ingress</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Removes the specified inbound (ingress) rules from a security group

### Description

Removes the specified inbound (ingress) rules from a security group.

You can specify rules using either rule IDs or security group rule
properties. If you use rule properties, the values that you specify (for
example, ports) must match the existing rule's values exactly. Each rule
has a protocol, from and to ports, and source (CIDR range, security
group, or prefix list). For the TCP and UDP protocols, you must also
specify the destination port or range of ports. For the ICMP protocol,
you must also specify the ICMP type and code. If the security group rule
has a description, you do not need to specify the description to revoke
the rule.

\[EC2-Classic, default VPC\] If the values you specify do not match the
existing rule's values, no error is returned, and the output describes
the security group rules that were not revoked.

Amazon Web Services recommends that you describe the security group to
verify that the rules were removed.

Rule changes are propagated to instances within the security group as
quickly as possible. However, a small delay might occur.

We are retiring EC2-Classic. We recommend that you migrate from
EC2-Classic to a VPC. For more information, see [Migrate from
EC2-Classic to a
VPC](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/vpc-migrate.html)
in the *Amazon Elastic Compute Cloud User Guide*.

### Usage

    ec2_revoke_security_group_ingress(CidrIp, FromPort, GroupId, GroupName,
      IpPermissions, IpProtocol, SourceSecurityGroupName,
      SourceSecurityGroupOwnerId, ToPort, DryRun, SecurityGroupRuleIds)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_revoke_security_group_ingress_:_CidrIp">CidrIp</code></td>
<td><p>The CIDR IP address range. You can't specify this parameter when
specifying a source security group.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_revoke_security_group_ingress_:_FromPort">FromPort</code></td>
<td><p>If the protocol is TCP or UDP, this is the start of the port
range. If the protocol is ICMP, this is the type number. A value of -1
indicates all ICMP types.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_revoke_security_group_ingress_:_GroupId">GroupId</code></td>
<td><p>The ID of the security group. You must specify either the
security group ID or the security group name in the request. For
security groups in a nondefault VPC, you must specify the security group
ID.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_revoke_security_group_ingress_:_GroupName">GroupName</code></td>
<td><p>[EC2-Classic, default VPC] The name of the security group. You
must specify either the security group ID or the security group name in
the request. For security groups in a nondefault VPC, you must specify
the security group ID.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_revoke_security_group_ingress_:_IpPermissions">IpPermissions</code></td>
<td><p>The sets of IP permissions. You can't specify a source security
group and a CIDR IP address range in the same set of
permissions.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_revoke_security_group_ingress_:_IpProtocol">IpProtocol</code></td>
<td><p>The IP protocol name (<code>tcp</code>, <code>udp</code>,
<code>icmp</code>) or number (see <a
href="http://www.iana.org/assignments/protocol-numbers/protocol-numbers.xhtml">Protocol
Numbers</a>). Use <code>-1</code> to specify all.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_revoke_security_group_ingress_:_SourceSecurityGroupName">SourceSecurityGroupName</code></td>
<td><p>[EC2-Classic, default VPC] The name of the source security group.
You can't specify this parameter in combination with the following
parameters: the CIDR IP address range, the start of the port range, the
IP protocol, and the end of the port range. For EC2-VPC, the source
security group must be in the same VPC. To revoke a specific rule for an
IP protocol and port range, use a set of IP permissions
instead.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_revoke_security_group_ingress_:_SourceSecurityGroupOwnerId">SourceSecurityGroupOwnerId</code></td>
<td><p>[EC2-Classic] The Amazon Web Services account ID of the source
security group, if the source security group is in a different account.
You can't specify this parameter in combination with the following
parameters: the CIDR IP address range, the IP protocol, the start of the
port range, and the end of the port range. To revoke a specific rule for
an IP protocol and port range, use a set of IP permissions
instead.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_revoke_security_group_ingress_:_ToPort">ToPort</code></td>
<td><p>If the protocol is TCP or UDP, this is the end of the port range.
If the protocol is ICMP, this is the code. A value of -1 indicates all
ICMP codes.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_revoke_security_group_ingress_:_DryRun">DryRun</code></td>
<td><p>Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_revoke_security_group_ingress_:_SecurityGroupRuleIds">SecurityGroupRuleIds</code></td>
<td><p>The IDs of the security group rules.</p></td>
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

    svc$revoke_security_group_ingress(
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
      SecurityGroupRuleIds = list(
        "string"
      )
    )
