<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>worklink_disassociate_website_certificate_authority</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Removes a certificate authority (CA)

### Description

Removes a certificate authority (CA).

### Usage

    worklink_disassociate_website_certificate_authority(FleetArn,
      WebsiteCaId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="worklink_disassociate_website_certificate_authority_:_FleetArn">FleetArn</code></td>
<td><p>[required] The ARN of the fleet.</p></td>
</tr>
<tr class="even">
<td><code
id="worklink_disassociate_website_certificate_authority_:_WebsiteCaId">WebsiteCaId</code></td>
<td><p>[required] A unique identifier for the CA.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$disassociate_website_certificate_authority(
      FleetArn = "string",
      WebsiteCaId = "string"
    )
