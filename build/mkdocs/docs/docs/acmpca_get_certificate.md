<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>acmpca_get_certificate</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves a certificate from your private CA or one that has been shared with you

### Description

Retrieves a certificate from your private CA or one that has been shared
with you. The ARN of the certificate is returned when you call the
`issue_certificate` action. You must specify both the ARN of your
private CA and the ARN of the issued certificate when calling the
**GetCertificate** action. You can retrieve the certificate if it is in
the **ISSUED** state. You can call the
`create_certificate_authority_audit_report` action to create a report
that contains information about all of the certificates issued and
revoked by your private CA.

### Usage

    acmpca_get_certificate(CertificateAuthorityArn, CertificateArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="acmpca_get_certificate_:_CertificateAuthorityArn">CertificateAuthorityArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) that was returned when
you called <code>create_certificate_authority</code>. This must be of
the form:</p>
<p><code>arn:aws:acm-pca:region:account:certificate-authority/12345678-1234-1234-1234-123456789012 </code>.</p></td>
</tr>
<tr class="even">
<td><code
id="acmpca_get_certificate_:_CertificateArn">CertificateArn</code></td>
<td><p>[required] The ARN of the issued certificate. The ARN contains
the certificate serial number and must be in the following form:</p>
<p><code>arn:aws:acm-pca:region:account:certificate-authority/12345678-1234-1234-1234-123456789012/certificate/286535153982981100925020015808220737245 </code></p></td>
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

    svc$get_certificate(
      CertificateAuthorityArn = "string",
      CertificateArn = "string"
    )
