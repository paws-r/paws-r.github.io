<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>acmpca_update_certificate_authority</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates the status or configuration of a private certificate authority (CA)

### Description

Updates the status or configuration of a private certificate authority
(CA). Your private CA must be in the `ACTIVE` or `DISABLED` state before
you can update it. You can disable a private CA that is in the `ACTIVE`
state or make a CA that is in the `DISABLED` state active again.

Both Amazon Web Services Private CA and the IAM principal must have
permission to write to the S3 bucket that you specify. If the IAM
principal making the call does not have permission to write to the
bucket, then an exception is thrown. For more information, see [Access
policies for CRLs in Amazon
S3](https://docs.aws.amazon.com/privateca/latest/userguide/crl-planning.html#s3-policies).

### Usage

    acmpca_update_certificate_authority(CertificateAuthorityArn,
      RevocationConfiguration, Status)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="acmpca_update_certificate_authority_:_CertificateAuthorityArn">CertificateAuthorityArn</code></td>
<td><p>[required] Amazon Resource Name (ARN) of the private CA that
issued the certificate to be revoked. This must be of the form:</p>
<p><code>arn:aws:acm-pca:region:account:certificate-authority/12345678-1234-1234-1234-123456789012 </code></p></td>
</tr>
<tr class="even">
<td><code
id="acmpca_update_certificate_authority_:_RevocationConfiguration">RevocationConfiguration</code></td>
<td><p>Contains information to enable Online Certificate Status Protocol
(OCSP) support, to enable a certificate revocation list (CRL), to enable
both, or to enable neither. If this parameter is not supplied, existing
capibilites remain unchanged. For more information, see the <a
href="https://docs.aws.amazon.com/privateca/latest/APIReference/API_OcspConfiguration.html">OcspConfiguration</a>
and <a
href="https://docs.aws.amazon.com/privateca/latest/APIReference/API_CrlConfiguration.html">CrlConfiguration</a>
types.</p>
<p>The following requirements apply to revocation configurations.</p>
<ul>
<li><p>A configuration disabling CRLs or OCSP must contain only the
<code>Enabled=False</code> parameter, and will fail if other parameters
such as <code>CustomCname</code> or <code>ExpirationInDays</code> are
included.</p></li>
<li><p>In a CRL configuration, the <code>S3BucketName</code> parameter
must conform to <a
href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/bucketnamingrules.html">Amazon
S3 bucket naming rules</a>.</p></li>
<li><p>A configuration containing a custom Canonical Name (CNAME)
parameter for CRLs or OCSP must conform to <a
href="https://www.ietf.org/rfc/rfc2396.txt">RFC2396</a> restrictions on
the use of special characters in a CNAME.</p></li>
<li><p>In a CRL or OCSP configuration, the value of a CNAME parameter
must not include a protocol prefix such as "http://" or
"https://".</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code
id="acmpca_update_certificate_authority_:_Status">Status</code></td>
<td><p>Status of your private CA.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$update_certificate_authority(
      CertificateAuthorityArn = "string",
      RevocationConfiguration = list(
        CrlConfiguration = list(
          Enabled = TRUE|FALSE,
          ExpirationInDays = 123,
          CustomCname = "string",
          S3BucketName = "string",
          S3ObjectAcl = "PUBLIC_READ"|"BUCKET_OWNER_FULL_CONTROL"
        ),
        OcspConfiguration = list(
          Enabled = TRUE|FALSE,
          OcspCustomCname = "string"
        )
      ),
      Status = "CREATING"|"PENDING_CERTIFICATE"|"ACTIVE"|"DELETED"|"DISABLED"|"EXPIRED"|"FAILED"
    )
