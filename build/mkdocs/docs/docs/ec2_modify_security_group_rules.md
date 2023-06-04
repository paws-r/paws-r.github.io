<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_modify_security_group_rules</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Modifies the rules of a security group

### Description

Modifies the rules of a security group.

### Usage

    ec2_modify_security_group_rules(GroupId, SecurityGroupRules, DryRun)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_modify_security_group_rules_:_GroupId">GroupId</code></td>
<td><p>[required] The ID of the security group.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_modify_security_group_rules_:_SecurityGroupRules">SecurityGroupRules</code></td>
<td><p>[required] Information about the security group properties to
update.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_modify_security_group_rules_:_DryRun">DryRun</code></td>
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
      Return = TRUE|FALSE
    )

### Request syntax

    svc$modify_security_group_rules(
      GroupId = "string",
      SecurityGroupRules = list(
        list(
          SecurityGroupRuleId = "string",
          SecurityGroupRule = list(
            IpProtocol = "string",
            FromPort = 123,
            ToPort = 123,
            CidrIpv4 = "string",
            CidrIpv6 = "string",
            PrefixListId = "string",
            ReferencedGroupId = "string",
            Description = "string"
          )
        )
      ),
      DryRun = TRUE|FALSE
    )
