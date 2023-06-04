<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>route53domains_push_domain</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Moves a domain from Amazon Web Services to another registrar

### Description

Moves a domain from Amazon Web Services to another registrar.

Supported actions:

-   Changes the IPS tags of a .uk domain, and pushes it to transit.
    Transit means that the domain is ready to be transferred to another
    registrar.

### Usage

    route53domains_push_domain(DomainName, Target)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="route53domains_push_domain_:_DomainName">DomainName</code></td>
<td><p>[required] Name of the domain.</p></td>
</tr>
<tr class="even">
<td><code id="route53domains_push_domain_:_Target">Target</code></td>
<td><p>[required] New IPS tag for the domain.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$push_domain(
      DomainName = "string",
      Target = "string"
    )
