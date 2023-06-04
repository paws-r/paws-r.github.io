<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>route53resolver_get_firewall_rule_group_policy</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns the Identity and Access Management (Amazon Web Services IAM) policy for sharing the specified rule group

### Description

Returns the Identity and Access Management (Amazon Web Services IAM)
policy for sharing the specified rule group. You can use the policy to
share the rule group using Resource Access Manager (RAM).

### Usage

    route53resolver_get_firewall_rule_group_policy(Arn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="route53resolver_get_firewall_rule_group_policy_:_Arn">Arn</code></td>
<td><p>[required] The ARN (Amazon Resource Name) for the rule
group.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      FirewallRuleGroupPolicy = "string"
    )

### Request syntax

    svc$get_firewall_rule_group_policy(
      Arn = "string"
    )
