<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>route53resolver_get_resolver_rule_association</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets information about an association between a specified Resolver rule and a VPC

### Description

Gets information about an association between a specified Resolver rule
and a VPC. You associate a Resolver rule and a VPC using
`associate_resolver_rule`.

### Usage

    route53resolver_get_resolver_rule_association(ResolverRuleAssociationId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="route53resolver_get_resolver_rule_association_:_ResolverRuleAssociationId">ResolverRuleAssociationId</code></td>
<td><p>[required] The ID of the Resolver rule association that you want
to get information about.</p></td>
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

    svc$get_resolver_rule_association(
      ResolverRuleAssociationId = "string"
    )
