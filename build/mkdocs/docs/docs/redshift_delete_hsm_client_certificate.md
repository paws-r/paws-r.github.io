<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>redshift_delete_hsm_client_certificate</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the specified HSM client certificate

### Description

Deletes the specified HSM client certificate.

### Usage

    redshift_delete_hsm_client_certificate(HsmClientCertificateIdentifier)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="redshift_delete_hsm_client_certificate_:_HsmClientCertificateIdentifier">HsmClientCertificateIdentifier</code></td>
<td><p>[required] The identifier of the HSM client certificate to be
deleted.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_hsm_client_certificate(
      HsmClientCertificateIdentifier = "string"
    )
