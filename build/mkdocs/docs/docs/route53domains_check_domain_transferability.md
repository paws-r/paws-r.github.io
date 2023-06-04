<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>route53domains_check_domain_transferability</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Checks whether a domain name can be transferred to Amazon Route 53

### Description

Checks whether a domain name can be transferred to Amazon Route 53.

### Usage

    route53domains_check_domain_transferability(DomainName, AuthCode)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="route53domains_check_domain_transferability_:_DomainName">DomainName</code></td>
<td><p>[required] The name of the domain that you want to transfer to
Route 53. The top-level domain (TLD), such as .com, must be a TLD that
Route 53 supports. For a list of supported TLDs, see <a
href="https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/registrar-tld-list.html">Domains
that You Can Register with Amazon Route 53</a> in the <em>Amazon Route
53 Developer Guide</em>.</p>
<p>The domain name can contain only the following characters:</p>
<ul>
<li><p>Letters a through z. Domain names are not case
sensitive.</p></li>
<li><p>Numbers 0 through 9.</p></li>
<li><p>Hyphen (-). You can't specify a hyphen at the beginning or end of
a label.</p></li>
<li><p>Period (.) to separate the labels in the name, such as the
<code>.</code> in <code>example.com</code>.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="route53domains_check_domain_transferability_:_AuthCode">AuthCode</code></td>
<td><p>If the registrar for the top-level domain (TLD) requires an
authorization code to transfer the domain, the code that you got from
the current registrar for the domain.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Transferability = list(
        Transferable = "TRANSFERABLE"|"UNTRANSFERABLE"|"DONT_KNOW"|"DOMAIN_IN_OWN_ACCOUNT"|"DOMAIN_IN_ANOTHER_ACCOUNT"|"PREMIUM_DOMAIN"
      )
    )

### Request syntax

    svc$check_domain_transferability(
      DomainName = "string",
      AuthCode = "string"
    )
