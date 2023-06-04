<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>route53domains_disassociate_delegation_signer_from_domain</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a delegation signer (DS) record in the registry zone for this domain name

### Description

Deletes a delegation signer (DS) record in the registry zone for this
domain name.

### Usage

    route53domains_disassociate_delegation_signer_from_domain(DomainName,
      Id)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="route53domains_disassociate_delegation_signer_from_domain_:_DomainName">DomainName</code></td>
<td><p>[required] Name of the domain.</p></td>
</tr>
<tr class="even">
<td><code
id="route53domains_disassociate_delegation_signer_from_domain_:_Id">Id</code></td>
<td><p>[required] An internal identification number assigned to each DS
record after it’s created. You can retrieve it as part of DNSSEC
information returned by <code>get_domain_detail</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      OperationId = "string"
    )

### Request syntax

    svc$disassociate_delegation_signer_from_domain(
      DomainName = "string",
      Id = "string"
    )
