<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>route53domains_enable_domain_auto_renew</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## This operation configures Amazon Route 53 to automatically renew the specified domain before the domain registration expires

### Description

This operation configures Amazon Route 53 to automatically renew the
specified domain before the domain registration expires. The cost of
renewing your domain registration is billed to your Amazon Web Services
account.

The period during which you can renew a domain name varies by TLD. For a
list of TLDs and their renewal policies, see [Domains That You Can
Register with Amazon Route
53](https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/registrar-tld-list.html)
in the *Amazon Route 53 Developer Guide*. Route 53 requires that you
renew before the end of the renewal period so we can complete processing
before the deadline.

### Usage

    route53domains_enable_domain_auto_renew(DomainName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="route53domains_enable_domain_auto_renew_:_DomainName">DomainName</code></td>
<td><p>[required] The name of the domain that you want to enable
automatic renewal for.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$enable_domain_auto_renew(
      DomainName = "string"
    )
