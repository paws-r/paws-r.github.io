<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>acmpca_get_certificate_authority_certificate</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves the certificate and certificate chain for your private certificate authority (CA) or one that has been shared with you

### Description

Retrieves the certificate and certificate chain for your private
certificate authority (CA) or one that has been shared with you. Both
the certificate and the chain are base64 PEM-encoded. The chain does not
include the CA certificate. Each certificate in the chain signs the one
before it.

### Usage

    acmpca_get_certificate_authority_certificate(CertificateAuthorityArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="acmpca_get_certificate_authority_certificate_:_CertificateAuthorityArn">CertificateAuthorityArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of your private CA.
This is of the form:</p>
<p><code>arn:aws:acm-pca:region:account:certificate-authority/12345678-1234-1234-1234-123456789012 </code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Certificate = "string",
      CertificateChain = "string"
    )

### Request syntax

    svc$get_certificate_authority_certificate(
      CertificateAuthorityArn = "string"
    )
