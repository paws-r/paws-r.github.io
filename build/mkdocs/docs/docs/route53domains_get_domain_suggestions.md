<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>route53domains_get_domain_suggestions</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## The GetDomainSuggestions operation returns a list of suggested domain names

### Description

The GetDomainSuggestions operation returns a list of suggested domain
names.

### Usage

    route53domains_get_domain_suggestions(DomainName, SuggestionCount,
      OnlyAvailable)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="route53domains_get_domain_suggestions_:_DomainName">DomainName</code></td>
<td><p>[required] A domain name that you want to use as the basis for a
list of possible domain names. The top-level domain (TLD), such as .com,
must be a TLD that Route 53 supports. For a list of supported TLDs, see
<a
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
that You Can Register with Amazon Route 53</a>.</p></td>
</tr>
<tr class="even">
<td><code
id="route53domains_get_domain_suggestions_:_SuggestionCount">SuggestionCount</code></td>
<td><p>[required] The number of suggested domain names that you want
Route 53 to return. Specify a value between 1 and 50.</p></td>
</tr>
<tr class="odd">
<td><code
id="route53domains_get_domain_suggestions_:_OnlyAvailable">OnlyAvailable</code></td>
<td><p>[required] If <code>OnlyAvailable</code> is <code>true</code>,
Route 53 returns only domain names that are available. If
<code>OnlyAvailable</code> is <code>false</code>, Route 53 returns
domain names without checking whether they're available to be
registered. To determine whether the domain is available, you can call
<code>checkDomainAvailability</code> for each suggestion.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      SuggestionsList = list(
        list(
          DomainName = "string",
          Availability = "string"
        )
      )
    )

### Request syntax

    svc$get_domain_suggestions(
      DomainName = "string",
      SuggestionCount = 123,
      OnlyAvailable = TRUE|FALSE
    )
