<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>worklink_disassociate_domain</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Disassociates a domain from Amazon WorkLink

### Description

Disassociates a domain from Amazon WorkLink. End users lose the ability
to access the domain with Amazon WorkLink.

### Usage

    worklink_disassociate_domain(FleetArn, DomainName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="worklink_disassociate_domain_:_FleetArn">FleetArn</code></td>
<td><p>[required] The ARN of the fleet.</p></td>
</tr>
<tr class="even">
<td><code
id="worklink_disassociate_domain_:_DomainName">DomainName</code></td>
<td><p>[required] The name of the domain.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$disassociate_domain(
      FleetArn = "string",
      DomainName = "string"
    )
