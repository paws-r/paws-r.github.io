<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>route53resolver_update_resolver_rule</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates settings for a specified Resolver rule

### Description

Updates settings for a specified Resolver rule. `ResolverRuleId` is
required, and all other parameters are optional. If you don't specify a
parameter, it retains its current value.

### Usage

    route53resolver_update_resolver_rule(ResolverRuleId, Config)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="route53resolver_update_resolver_rule_:_ResolverRuleId">ResolverRuleId</code></td>
<td><p>[required] The ID of the Resolver rule that you want to
update.</p></td>
</tr>
<tr class="even">
<td><code
id="route53resolver_update_resolver_rule_:_Config">Config</code></td>
<td><p>[required] The new settings for the Resolver rule.</p></td>
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

    svc$update_resolver_rule(
      ResolverRuleId = "string",
      Config = list(
        Name = "string",
        TargetIps = list(
          list(
            Ip = "string",
            Port = 123,
            Ipv6 = "string"
          )
        ),
        ResolverEndpointId = "string"
      )
    )
