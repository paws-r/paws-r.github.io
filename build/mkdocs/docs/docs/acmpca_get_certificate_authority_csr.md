<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>acmpca_get_certificate_authority_csr</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves the certificate signing request (CSR) for your private certificate authority (CA)

### Description

Retrieves the certificate signing request (CSR) for your private
certificate authority (CA). The CSR is created when you call the
`create_certificate_authority` action. Sign the CSR with your Amazon Web
Services Private CA-hosted or on-premises root or subordinate CA. Then
import the signed certificate back into Amazon Web Services Private CA
by calling the `import_certificate_authority_certificate` action. The
CSR is returned as a base64 PEM-encoded string.

### Usage

    acmpca_get_certificate_authority_csr(CertificateAuthorityArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="acmpca_get_certificate_authority_csr_:_CertificateAuthorityArn">CertificateAuthorityArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) that was returned when
you called the <code>create_certificate_authority</code> action. This
must be of the form:</p>
<p><code>arn:aws:acm-pca:region:account:certificate-authority/12345678-1234-1234-1234-123456789012 </code></p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Csr = "string"
    )

### Request syntax

    svc$get_certificate_authority_csr(
      CertificateAuthorityArn = "string"
    )
