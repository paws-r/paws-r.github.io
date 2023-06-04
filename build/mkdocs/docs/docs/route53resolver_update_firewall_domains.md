<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>route53resolver_update_firewall_domains</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates the firewall domain list from an array of domain specifications

### Description

Updates the firewall domain list from an array of domain specifications.

### Usage

    route53resolver_update_firewall_domains(FirewallDomainListId, Operation,
      Domains)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="route53resolver_update_firewall_domains_:_FirewallDomainListId">FirewallDomainListId</code></td>
<td><p>[required] The ID of the domain list whose domains you want to
update.</p></td>
</tr>
<tr class="even">
<td><code
id="route53resolver_update_firewall_domains_:_Operation">Operation</code></td>
<td><p>[required] What you want DNS Firewall to do with the domains that
you are providing:</p>
<ul>
<li><p><code>ADD</code> - Add the domains to the ones that are already
in the domain list.</p></li>
<li><p><code>REMOVE</code> - Search the domain list for the domains and
remove them from the list.</p></li>
<li><p><code>REPLACE</code> - Update the domain list to exactly match
the list that you are providing.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code
id="route53resolver_update_firewall_domains_:_Domains">Domains</code></td>
<td><p>[required] A list of domains to use in the update operation.</p>
<p>There is a limit of 1000 domains per request.</p>
<p>Each domain specification in your domain list must satisfy the
following requirements:</p>
<ul>
<li><p>It can optionally start with <code>*</code> (asterisk).</p></li>
<li><p>With the exception of the optional starting asterisk, it must
only contain the following characters: <code>A-Z</code>,
<code>a-z</code>, <code>0-9</code>, <code>-</code> (hyphen).</p></li>
<li><p>It must be from 1-255 characters in length.</p></li>
</ul></td>
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

    svc$update_firewall_domains(
      FirewallDomainListId = "string",
      Operation = "ADD"|"REMOVE"|"REPLACE",
      Domains = list(
        "string"
      )
    )
