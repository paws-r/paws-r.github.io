<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>route53resolver_create_firewall_domain_list</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates an empty firewall domain list for use in DNS Firewall rules

### Description

Creates an empty firewall domain list for use in DNS Firewall rules. You
can populate the domains for the new list with a file, using
`import_firewall_domains`, or with domain strings, using
`update_firewall_domains`.

### Usage

    route53resolver_create_firewall_domain_list(CreatorRequestId, Name,
      Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="route53resolver_create_firewall_domain_list_:_CreatorRequestId">CreatorRequestId</code></td>
<td><p>[required] A unique string that identifies the request and that
allows you to retry failed requests without the risk of running the
operation twice. <code>CreatorRequestId</code> can be any unique string,
for example, a date/time stamp.</p></td>
</tr>
<tr class="even">
<td><code
id="route53resolver_create_firewall_domain_list_:_Name">Name</code></td>
<td><p>[required] A name that lets you identify the domain list to
manage and use it.</p></td>
</tr>
<tr class="odd">
<td><code
id="route53resolver_create_firewall_domain_list_:_Tags">Tags</code></td>
<td><p>A list of the tag keys and values that you want to associate with
the domain list.</p></td>
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

    svc$create_firewall_domain_list(
      CreatorRequestId = "string",
      Name = "string",
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )
