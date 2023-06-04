<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>worklink_revoke_domain_access</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Moves a domain to INACTIVE status if it was in the ACTIVE status

### Description

Moves a domain to INACTIVE status if it was in the ACTIVE status.

### Usage

    worklink_revoke_domain_access(FleetArn, DomainName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="worklink_revoke_domain_access_:_FleetArn">FleetArn</code></td>
<td><p>[required] The ARN of the fleet.</p></td>
</tr>
<tr class="even">
<td><code
id="worklink_revoke_domain_access_:_DomainName">DomainName</code></td>
<td><p>[required] The name of the domain.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$revoke_domain_access(
      FleetArn = "string",
      DomainName = "string"
    )
