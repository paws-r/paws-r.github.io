<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>route53domains_retrieve_domain_auth_code</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## This operation returns the authorization code for the domain

### Description

This operation returns the authorization code for the domain. To
transfer a domain to another registrar, you provide this value to the
new registrar.

### Usage

    route53domains_retrieve_domain_auth_code(DomainName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="route53domains_retrieve_domain_auth_code_:_DomainName">DomainName</code></td>
<td><p>[required] The name of the domain that you want to get an
authorization code for.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      AuthCode = "string"
    )

### Request syntax

    svc$retrieve_domain_auth_code(
      DomainName = "string"
    )
