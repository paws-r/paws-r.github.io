<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>route53domains_associate_delegation_signer_to_domain</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a delegation signer (DS) record in the registry zone for this domain name

### Description

Creates a delegation signer (DS) record in the registry zone for this
domain name.

Note that creating DS record at the registry impacts DNSSEC validation
of your DNS records. This action may render your domain name unavailable
on the internet if the steps are completed in the wrong order, or with
incorrect timing. For more information about DNSSEC signing, see
[Configuring DNSSEC
signing](https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/dns-configuring-dnssec.html)
in the *Route 53 developer guide*.

### Usage

    route53domains_associate_delegation_signer_to_domain(DomainName,
      SigningAttributes)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="route53domains_associate_delegation_signer_to_domain_:_DomainName">DomainName</code></td>
<td><p>[required] The name of the domain.</p></td>
</tr>
<tr class="even">
<td><code
id="route53domains_associate_delegation_signer_to_domain_:_SigningAttributes">SigningAttributes</code></td>
<td><p>[required] The information about a key, including the algorithm,
public key-value, and flags.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      OperationId = "string"
    )

### Request syntax

    svc$associate_delegation_signer_to_domain(
      DomainName = "string",
      SigningAttributes = list(
        Algorithm = 123,
        Flags = 123,
        PublicKey = "string"
      )
    )
