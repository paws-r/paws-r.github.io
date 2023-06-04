<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>route53resolver_put_firewall_rule_group_policy</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Attaches an Identity and Access Management (Amazon Web Services IAM) policy for sharing the rule group

### Description

Attaches an Identity and Access Management (Amazon Web Services IAM)
policy for sharing the rule group. You can use the policy to share the
rule group using Resource Access Manager (RAM).

### Usage

    route53resolver_put_firewall_rule_group_policy(Arn,
      FirewallRuleGroupPolicy)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="route53resolver_put_firewall_rule_group_policy_:_Arn">Arn</code></td>
<td><p>[required] The ARN (Amazon Resource Name) for the rule group that
you want to share.</p></td>
</tr>
<tr class="even">
<td><code
id="route53resolver_put_firewall_rule_group_policy_:_FirewallRuleGroupPolicy">FirewallRuleGroupPolicy</code></td>
<td><p>[required] The Identity and Access Management (Amazon Web
Services IAM) policy to attach to the rule group.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ReturnValue = TRUE|FALSE
    )

### Request syntax

    svc$put_firewall_rule_group_policy(
      Arn = "string",
      FirewallRuleGroupPolicy = "string"
    )
