<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>route53resolver_import_firewall_domains</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Imports domain names from a file into a domain list, for use in a DNS firewall rule group

### Description

Imports domain names from a file into a domain list, for use in a DNS
firewall rule group.

Each domain specification in your domain list must satisfy the following
requirements:

-   It can optionally start with `*` (asterisk).

-   With the exception of the optional starting asterisk, it must only
    contain the following characters: `A-Z`, `a-z`, `0-9`, `-` (hyphen).

-   It must be from 1-255 characters in length.

### Usage

    route53resolver_import_firewall_domains(FirewallDomainListId, Operation,
      DomainFileUrl)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="route53resolver_import_firewall_domains_:_FirewallDomainListId">FirewallDomainListId</code></td>
<td><p>[required] The ID of the domain list that you want to modify with
the import operation.</p></td>
</tr>
<tr class="even">
<td><code
id="route53resolver_import_firewall_domains_:_Operation">Operation</code></td>
<td><p>[required] What you want DNS Firewall to do with the domains that
are listed in the file. This must be set to <code>REPLACE</code>, which
updates the domain list to exactly match the list in the file.</p></td>
</tr>
<tr class="odd">
<td><code
id="route53resolver_import_firewall_domains_:_DomainFileUrl">DomainFileUrl</code></td>
<td><p>[required] The fully qualified URL or URI of the file stored in
Amazon Simple Storage Service (Amazon S3) that contains the list of
domains to import.</p>
<p>The file must be in an S3 bucket that's in the same Region as your
DNS Firewall. The file must be a text file and must contain a single
domain per line.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Id = "string",
      Name = "string",
      Status = "COMPLETE"|"COMPLETE_IMPORT_FAILED"|"IMPORTING"|"DELETING"|"UPDATING",
      StatusMessage = "string"
    )

### Request syntax

    svc$import_firewall_domains(
      FirewallDomainListId = "string",
      Operation = "REPLACE",
      DomainFileUrl = "string"
    )
