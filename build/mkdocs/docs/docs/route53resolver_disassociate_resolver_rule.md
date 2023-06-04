<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>route53resolver_disassociate_resolver_rule</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Removes the association between a specified Resolver rule and a specified VPC

### Description

Removes the association between a specified Resolver rule and a
specified VPC.

If you disassociate a Resolver rule from a VPC, Resolver stops
forwarding DNS queries for the domain name that you specified in the
Resolver rule.

### Usage

    route53resolver_disassociate_resolver_rule(VPCId, ResolverRuleId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="route53resolver_disassociate_resolver_rule_:_VPCId">VPCId</code></td>
<td><p>[required] The ID of the VPC that you want to disassociate the
Resolver rule from.</p></td>
</tr>
<tr class="even">
<td><code
id="route53resolver_disassociate_resolver_rule_:_ResolverRuleId">ResolverRuleId</code></td>
<td><p>[required] The ID of the Resolver rule that you want to
disassociate from the specified VPC.</p></td>
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

    svc$disassociate_resolver_rule(
      VPCId = "string",
      ResolverRuleId = "string"
    )
