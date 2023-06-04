<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>route53resolver_delete_resolver_rule</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a Resolver rule

### Description

Deletes a Resolver rule. Before you can delete a Resolver rule, you must
disassociate it from all the VPCs that you associated the Resolver rule
with. For more information, see `disassociate_resolver_rule`.

### Usage

    route53resolver_delete_resolver_rule(ResolverRuleId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="route53resolver_delete_resolver_rule_:_ResolverRuleId">ResolverRuleId</code></td>
<td><p>[required] The ID of the Resolver rule that you want to
delete.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ResolverRule = list(
        Id = "string",
        CreatorRequestId = "string",
        Arn = "string",
        DomainName = "string",
        Status = "COMPLETE"|"DELETING"|"UPDATING"|"FAILED",
        StatusMessage = "string",
        RuleType = "FORWARD"|"SYSTEM"|"RECURSIVE",
        Name = "string",
        TargetIps = list(
          list(
            Ip = "string",
            Port = 123,
            Ipv6 = "string"
          )
        ),
        ResolverEndpointId = "string",
        OwnerId = "string",
        ShareStatus = "NOT_SHARED"|"SHARED_WITH_ME"|"SHARED_BY_ME",
        CreationTime = "string",
        ModificationTime = "string"
      )
    )

### Request syntax

    svc$delete_resolver_rule(
      ResolverRuleId = "string"
    )
