<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>route53domains_check_domain_availability</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## This operation checks the availability of one domain name

### Description

This operation checks the availability of one domain name. Note that if
the availability status of a domain is pending, you must submit another
request to determine the availability of the domain name.

### Usage

    route53domains_check_domain_availability(DomainName, IdnLangCode)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="route53domains_check_domain_availability_:_DomainName">DomainName</code></td>
<td><p>[required] The name of the domain that you want to get
availability for. The top-level domain (TLD), such as .com, must be a
TLD that Route 53 supports. For a list of supported TLDs, see <a
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
</ul>
<p>Internationalized domain names are not supported for some top-level
domains. To determine whether the TLD that you want to use supports
internationalized domain names, see <a
href="https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/registrar-tld-list.html">Domains
that You Can Register with Amazon Route 53</a>. For more information,
see <a
href="https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/DomainNameFormat.html#domain-name-format-idns">Formatting
Internationalized Domain Names</a>.</p></td>
</tr>
<tr class="even">
<td><code
id="route53domains_check_domain_availability_:_IdnLangCode">IdnLangCode</code></td>
<td><p>Reserved for future use.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Availability = "AVAILABLE"|"AVAILABLE_RESERVED"|"AVAILABLE_PREORDER"|"UNAVAILABLE"|"UNAVAILABLE_PREMIUM"|"UNAVAILABLE_RESTRICTED"|"RESERVED"|"DONT_KNOW"
    )

### Request syntax

    svc$check_domain_availability(
      DomainName = "string",
      IdnLangCode = "string"
    )
