<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>route53resolver_get_firewall_domain_list</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves the specified firewall domain list

### Description

Retrieves the specified firewall domain list.

### Usage

    route53resolver_get_firewall_domain_list(FirewallDomainListId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="route53resolver_get_firewall_domain_list_:_FirewallDomainListId">FirewallDomainListId</code></td>
<td><p>[required] The ID of the domain list.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      FirewallDomainList = list(
        Id = "string",
        Arn = "string",
        Name = "string",
        DomainCount = 123,
        Status = "COMPLETE"|"COMPLETE_IMPORT_FAILED"|"IMPORTING"|"DELETING"|"UPDATING",
        StatusMessage = "string",
        ManagedOwnerName = "string",
        CreatorRequestId = "string",
        CreationTime = "string",
        ModificationTime = "string"
      )
    )

### Request syntax

    svc$get_firewall_domain_list(
      FirewallDomainListId = "string"
    )
