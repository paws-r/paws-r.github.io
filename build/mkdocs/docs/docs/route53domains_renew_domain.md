<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>route53domains_renew_domain</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## This operation renews a domain for the specified number of years

### Description

This operation renews a domain for the specified number of years. The
cost of renewing your domain is billed to your Amazon Web Services
account.

We recommend that you renew your domain several weeks before the
expiration date. Some TLD registries delete domains before the
expiration date if you haven't renewed far enough in advance. For more
information about renewing domain registration, see [Renewing
Registration for a
Domain](https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/domain-renew.html)
in the *Amazon Route 53 Developer Guide*.

### Usage

    route53domains_renew_domain(DomainName, DurationInYears,
      CurrentExpiryYear)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="route53domains_renew_domain_:_DomainName">DomainName</code></td>
<td><p>[required] The name of the domain that you want to
renew.</p></td>
</tr>
<tr class="even">
<td><code
id="route53domains_renew_domain_:_DurationInYears">DurationInYears</code></td>
<td><p>The number of years that you want to renew the domain for. The
maximum number of years depends on the top-level domain. For the range
of valid values for your domain, see <a
href="https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/registrar-tld-list.html">Domains
that You Can Register with Amazon Route 53</a> in the <em>Amazon Route
53 Developer Guide</em>.</p>
<p>Default: 1</p></td>
</tr>
<tr class="odd">
<td><code
id="route53domains_renew_domain_:_CurrentExpiryYear">CurrentExpiryYear</code></td>
<td><p>[required] The year when the registration for the domain is set
to expire. This value must match the current expiration date for the
domain.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      OperationId = "string"
    )

### Request syntax

    svc$renew_domain(
      DomainName = "string",
      DurationInYears = 123,
      CurrentExpiryYear = 123
    )
