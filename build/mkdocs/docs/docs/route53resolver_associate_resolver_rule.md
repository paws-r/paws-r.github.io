<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>route53resolver_associate_resolver_rule</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Associates a Resolver rule with a VPC

### Description

Associates a Resolver rule with a VPC. When you associate a rule with a
VPC, Resolver forwards all DNS queries for the domain name that is
specified in the rule and that originate in the VPC. The queries are
forwarded to the IP addresses for the DNS resolvers that are specified
in the rule. For more information about rules, see
`create_resolver_rule`.

### Usage

    route53resolver_associate_resolver_rule(ResolverRuleId, Name, VPCId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="route53resolver_associate_resolver_rule_:_ResolverRuleId">ResolverRuleId</code></td>
<td><p>[required] The ID of the Resolver rule that you want to associate
with the VPC. To list the existing Resolver rules, use
<code>list_resolver_rules</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="route53resolver_associate_resolver_rule_:_Name">Name</code></td>
<td><p>A name for the association that you're creating between a
Resolver rule and a VPC.</p></td>
</tr>
<tr class="odd">
<td><code
id="route53resolver_associate_resolver_rule_:_VPCId">VPCId</code></td>
<td><p>[required] The ID of the VPC that you want to associate the
Resolver rule with.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ResolverRuleAssociation = list(
        Id = "string",
        ResolverRuleId = "string",
        Name = "string",
        VPCId = "string",
        Status = "CREATING"|"COMPLETE"|"DELETING"|"FAILED"|"OVERRIDDEN",
        StatusMessage = "string"
      )
    )

### Request syntax

    svc$associate_resolver_rule(
      ResolverRuleId = "string",
      Name = "string",
      VPCId = "string"
    )
