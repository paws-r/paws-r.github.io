<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_update_security_group_rule_descriptions_egress</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## \[VPC only\] Updates the description of an egress (outbound) security group rule

### Description

\[VPC only\] Updates the description of an egress (outbound) security
group rule. You can replace an existing description, or add a
description to a rule that did not have one previously. You can remove a
description for a security group rule by omitting the description
parameter in the request.

### Usage

    ec2_update_security_group_rule_descriptions_egress(DryRun, GroupId,
      GroupName, IpPermissions, SecurityGroupRuleDescriptions)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_update_security_group_rule_descriptions_egress_:_DryRun">DryRun</code></td>
<td><p>Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_update_security_group_rule_descriptions_egress_:_GroupId">GroupId</code></td>
<td><p>The ID of the security group. You must specify either the
security group ID or the security group name in the request. For
security groups in a nondefault VPC, you must specify the security group
ID.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_update_security_group_rule_descriptions_egress_:_GroupName">GroupName</code></td>
<td><p>[Default VPC] The name of the security group. You must specify
either the security group ID or the security group name in the
request.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_update_security_group_rule_descriptions_egress_:_IpPermissions">IpPermissions</code></td>
<td><p>The IP permissions for the security group rule. You must specify
either the IP permissions or the description.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_update_security_group_rule_descriptions_egress_:_SecurityGroupRuleDescriptions">SecurityGroupRuleDescriptions</code></td>
<td><p>The description for the egress security group rules. You must
specify either the description or the IP permissions.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Return = TRUE|FALSE
    )

### Request syntax

    svc$update_security_group_rule_descriptions_egress(
      DryRun = TRUE|FALSE,
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
      SecurityGroupRuleDescriptions = list(
        list(
          SecurityGroupRuleId = "string",
          Description = "string"
        )
      )
    )

### Examples

    ## Not run: 
    # This example updates the description for the specified security group
    # rule.
    svc$update_security_group_rule_descriptions_egress(
      GroupId = "sg-123abc12",
      IpPermissions = list(
        list(
          FromPort = 80L,
          IpProtocol = "tcp",
          IpRanges = list(
            list(
              CidrIp = "203.0.113.0/24",
              Description = "Outbound HTTP access to server 2"
            )
          ),
          ToPort = 80L
        )
      )
    )

    ## End(Not run)
