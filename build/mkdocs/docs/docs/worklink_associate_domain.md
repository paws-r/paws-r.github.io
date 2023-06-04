<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>worklink_associate_domain</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Specifies a domain to be associated to Amazon WorkLink

### Description

Specifies a domain to be associated to Amazon WorkLink.

### Usage

    worklink_associate_domain(FleetArn, DomainName, DisplayName,
      AcmCertificateArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="worklink_associate_domain_:_FleetArn">FleetArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the fleet.</p></td>
</tr>
<tr class="even">
<td><code
id="worklink_associate_domain_:_DomainName">DomainName</code></td>
<td><p>[required] The fully qualified domain name (FQDN).</p></td>
</tr>
<tr class="odd">
<td><code
id="worklink_associate_domain_:_DisplayName">DisplayName</code></td>
<td><p>The name to display.</p></td>
</tr>
<tr class="even">
<td><code
id="worklink_associate_domain_:_AcmCertificateArn">AcmCertificateArn</code></td>
<td><p>[required] The ARN of an issued ACM certificate that is valid for
the domain being associated.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$associate_domain(
      FleetArn = "string",
      DomainName = "string",
      DisplayName = "string",
      AcmCertificateArn = "string"
    )
