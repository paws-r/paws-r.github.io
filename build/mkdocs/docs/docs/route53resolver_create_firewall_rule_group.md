<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>route53resolver_create_firewall_rule_group</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates an empty DNS Firewall rule group for filtering DNS network traffic in a VPC

### Description

Creates an empty DNS Firewall rule group for filtering DNS network
traffic in a VPC. You can add rules to the new rule group by calling
`create_firewall_rule`.

### Usage

    route53resolver_create_firewall_rule_group(CreatorRequestId, Name, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="route53resolver_create_firewall_rule_group_:_CreatorRequestId">CreatorRequestId</code></td>
<td><p>[required] A unique string defined by you to identify the
request. This allows you to retry failed requests without the risk of
running the operation twice. This can be any unique string, for example,
a timestamp.</p></td>
</tr>
<tr class="even">
<td><code
id="route53resolver_create_firewall_rule_group_:_Name">Name</code></td>
<td><p>[required] A name that lets you identify the rule group, to
manage and use it.</p></td>
</tr>
<tr class="odd">
<td><code
id="route53resolver_create_firewall_rule_group_:_Tags">Tags</code></td>
<td><p>A list of the tag keys and values that you want to associate with
the rule group.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      FirewallRuleGroup = list(
        Id = "string",
        Arn = "string",
        Name = "string",
        RuleCount = 123,
        Status = "COMPLETE"|"DELETING"|"UPDATING",
        StatusMessage = "string",
        OwnerId = "string",
        CreatorRequestId = "string",
        ShareStatus = "NOT_SHARED"|"SHARED_WITH_ME"|"SHARED_BY_ME",
        CreationTime = "string",
        ModificationTime = "string"
      )
    )

### Request syntax

    svc$create_firewall_rule_group(
      CreatorRequestId = "string",
      Name = "string",
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )
