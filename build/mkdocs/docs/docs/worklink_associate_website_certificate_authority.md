<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>worklink_associate_website_certificate_authority</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Imports the root certificate of a certificate authority (CA) used to obtain TLS certificates used by associated websites within the company network

### Description

Imports the root certificate of a certificate authority (CA) used to
obtain TLS certificates used by associated websites within the company
network.

### Usage

    worklink_associate_website_certificate_authority(FleetArn, Certificate,
      DisplayName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="worklink_associate_website_certificate_authority_:_FleetArn">FleetArn</code></td>
<td><p>[required] The ARN of the fleet.</p></td>
</tr>
<tr class="even">
<td><code
id="worklink_associate_website_certificate_authority_:_Certificate">Certificate</code></td>
<td><p>[required] The root certificate of the CA.</p></td>
</tr>
<tr class="odd">
<td><code
id="worklink_associate_website_certificate_authority_:_DisplayName">DisplayName</code></td>
<td><p>The certificate name to display.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      WebsiteCaId = "string"
    )

### Request syntax

    svc$associate_website_certificate_authority(
      FleetArn = "string",
      Certificate = "string",
      DisplayName = "string"
    )
