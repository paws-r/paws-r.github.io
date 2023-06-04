<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_update_security_group_rule_descriptions_ingress</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates the description of an ingress (inbound) security group rule

### Description

Updates the description of an ingress (inbound) security group rule. You
can replace an existing description, or add a description to a rule that
did not have one previously. You can remove a description for a security
group rule by omitting the description parameter in the request.

### Usage

    ec2_update_security_group_rule_descriptions_ingress(DryRun, GroupId,
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
id="ec2_update_security_group_rule_descriptions_ingress_:_DryRun">DryRun</code></td>
<td><p>Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_update_security_group_rule_descriptions_ingress_:_GroupId">GroupId</code></td>
<td><p>The ID of the security group. You must specify either the
security group ID or the security group name in the request. For
security groups in a nondefault VPC, you must specify the security group
ID.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_update_security_group_rule_descriptions_ingress_:_GroupName">GroupName</code></td>
<td><p>[EC2-Classic, default VPC] The name of the security group. You
must specify either the security group ID or the security group name in
the request. For security groups in a nondefault VPC, you must specify
the security group ID.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_update_security_group_rule_descriptions_ingress_:_IpPermissions">IpPermissions</code></td>
<td><p>The IP permissions for the security group rule. You must specify
either IP permissions or a description.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_update_security_group_rule_descriptions_ingress_:_SecurityGroupRuleDescriptions">SecurityGroupRuleDescriptions</code></td>
<td><p>[VPC only] The description for the ingress security group rules.
You must specify either a description or IP permissions.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Return = TRUE|FALSE
    )

### Request syntax

    svc$update_security_group_rule_descriptions_ingress(
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
    svc$update_security_group_rule_descriptions_ingress(
      GroupId = "sg-123abc12",
      IpPermissions = list(
        list(
          FromPort = 22L,
          IpProtocol = "tcp",
          IpRanges = list(
            list(
              CidrIp = "203.0.113.0/16",
              Description = "SSH access from the LA office"
            )
          ),
          ToPort = 22L
        )
      )
    )

    ## End(Not run)
