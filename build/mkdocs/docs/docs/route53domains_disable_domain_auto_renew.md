<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>route53domains_disable_domain_auto_renew</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## This operation disables automatic renewal of domain registration for the specified domain

### Description

This operation disables automatic renewal of domain registration for the
specified domain.

### Usage

    route53domains_disable_domain_auto_renew(DomainName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="route53domains_disable_domain_auto_renew_:_DomainName">DomainName</code></td>
<td><p>[required] The name of the domain that you want to disable
automatic renewal for.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$disable_domain_auto_renew(
      DomainName = "string"
    )
