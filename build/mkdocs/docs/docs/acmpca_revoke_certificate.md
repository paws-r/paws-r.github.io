<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>acmpca_revoke_certificate</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Revokes a certificate that was issued inside Amazon Web Services Private CA

### Description

Revokes a certificate that was issued inside Amazon Web Services Private
CA. If you enable a certificate revocation list (CRL) when you create or
update your private CA, information about the revoked certificates will
be included in the CRL. Amazon Web Services Private CA writes the CRL to
an S3 bucket that you specify. A CRL is typically updated approximately
30 minutes after a certificate is revoked. If for any reason the CRL
update fails, Amazon Web Services Private CA attempts makes further
attempts every 15 minutes. With Amazon CloudWatch, you can create alarms
for the metrics `CRLGenerated` and `MisconfiguredCRLBucket`. For more
information, see [Supported CloudWatch
Metrics](https://docs.aws.amazon.com/privateca/latest/userguide/PcaCloudWatch.html).

Both Amazon Web Services Private CA and the IAM principal must have
permission to write to the S3 bucket that you specify. If the IAM
principal making the call does not have permission to write to the
bucket, then an exception is thrown. For more information, see [Access
policies for CRLs in Amazon
S3](https://docs.aws.amazon.com/privateca/latest/userguide/crl-planning.html#s3-policies).

Amazon Web Services Private CA also writes revocation information to the
audit report. For more information, see
`create_certificate_authority_audit_report`.

You cannot revoke a root CA self-signed certificate.

### Usage

    acmpca_revoke_certificate(CertificateAuthorityArn, CertificateSerial,
      RevocationReason)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="acmpca_revoke_certificate_:_CertificateAuthorityArn">CertificateAuthorityArn</code></td>
<td><p>[required] Amazon Resource Name (ARN) of the private CA that
issued the certificate to be revoked. This must be of the form:</p>
<p><code>arn:aws:acm-pca:region:account:certificate-authority/12345678-1234-1234-1234-123456789012 </code></p></td>
</tr>
<tr class="even">
<td><code
id="acmpca_revoke_certificate_:_CertificateSerial">CertificateSerial</code></td>
<td><p>[required] Serial number of the certificate to be revoked. This
must be in hexadecimal format. You can retrieve the serial number by
calling <code>get_certificate</code> with the Amazon Resource Name (ARN)
of the certificate you want and the ARN of your private CA. The
<strong>GetCertificate</strong> action retrieves the certificate in the
PEM format. You can use the following OpenSSL command to list the
certificate in text format and copy the hexadecimal serial number.</p>
<p><code
style="white-space: pre;">⁠openssl x509 -in file_path -text -noout⁠</code></p>
<p>You can also copy the serial number from the console or use the <a
href="https://docs.aws.amazon.com/acm/latest/APIReference/API_DescribeCertificate.html">DescribeCertificate</a>
action in the <em>Certificate Manager API Reference</em>.</p></td>
</tr>
<tr class="odd">
<td><code
id="acmpca_revoke_certificate_:_RevocationReason">RevocationReason</code></td>
<td><p>[required] Specifies why you revoked the certificate.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$revoke_certificate(
      CertificateAuthorityArn = "string",
      CertificateSerial = "string",
      RevocationReason = "UNSPECIFIED"|"KEY_COMPROMISE"|"CERTIFICATE_AUTHORITY_COMPROMISE"|"AFFILIATION_CHANGED"|"SUPERSEDED"|"CESSATION_OF_OPERATION"|"PRIVILEGE_WITHDRAWN"|"A_A_COMPROMISE"
    )
