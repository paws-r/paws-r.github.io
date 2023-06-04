<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>route53resolver_get_resolver_rule_policy</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets information about the Resolver rule policy for a specified rule

### Description

Gets information about the Resolver rule policy for a specified rule. A
Resolver rule policy includes the rule that you want to share with
another account, the account that you want to share the rule with, and
the Resolver operations that you want to allow the account to use.

### Usage

    route53resolver_get_resolver_rule_policy(Arn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="route53resolver_get_resolver_rule_policy_:_Arn">Arn</code></td>
<td><p>[required] The ID of the Resolver rule that you want to get the
Resolver rule policy for.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ResolverRulePolicy = "string"
    )

### Request syntax

    svc$get_resolver_rule_policy(
      Arn = "string"
    )
