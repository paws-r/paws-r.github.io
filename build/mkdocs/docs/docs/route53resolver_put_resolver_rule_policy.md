<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>route53resolver_put_resolver_rule_policy</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Specifies an Amazon Web Services rule that you want to share with another account, the account that you want to share the rule with, and the operations that you want the account to be able to perform on the rule

### Description

Specifies an Amazon Web Services rule that you want to share with
another account, the account that you want to share the rule with, and
the operations that you want the account to be able to perform on the
rule.

### Usage

    route53resolver_put_resolver_rule_policy(Arn, ResolverRulePolicy)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="route53resolver_put_resolver_rule_policy_:_Arn">Arn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the rule that you
want to share with another account.</p></td>
</tr>
<tr class="even">
<td><code
id="route53resolver_put_resolver_rule_policy_:_ResolverRulePolicy">ResolverRulePolicy</code></td>
<td><p>[required] An Identity and Access Management policy statement
that lists the rules that you want to share with another Amazon Web
Services account and the operations that you want the account to be able
to perform. You can specify the following operations in the
<code>Action</code> section of the statement:</p>
<ul>
<li><p><code>route53resolver:GetResolverRule</code></p></li>
<li><p><code>route53resolver:AssociateResolverRule</code></p></li>
<li><p><code>route53resolver:DisassociateResolverRule</code></p></li>
<li><p><code>route53resolver:ListResolverRules</code></p></li>
<li><p><code>route53resolver:ListResolverRuleAssociations</code></p></li>
</ul>
<p>In the <code>Resource</code> section of the statement, specify the
ARN for the rule that you want to share with another account. Specify
the same ARN that you specified in <code>Arn</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ReturnValue = TRUE|FALSE
    )

### Request syntax

    svc$put_resolver_rule_policy(
      Arn = "string",
      ResolverRulePolicy = "string"
    )
