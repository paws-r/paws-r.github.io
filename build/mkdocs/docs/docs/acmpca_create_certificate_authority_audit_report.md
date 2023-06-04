<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>acmpca_create_certificate_authority_audit_report</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates an audit report that lists every time that your CA private key is used

### Description

Creates an audit report that lists every time that your CA private key
is used. The report is saved in the Amazon S3 bucket that you specify on
input. The `issue_certificate` and `revoke_certificate` actions use the
private key.

Both Amazon Web Services Private CA and the IAM principal must have
permission to write to the S3 bucket that you specify. If the IAM
principal making the call does not have permission to write to the
bucket, then an exception is thrown. For more information, see [Access
policies for CRLs in Amazon
S3](https://docs.aws.amazon.com/privateca/latest/userguide/crl-planning.html#s3-policies).

Amazon Web Services Private CA assets that are stored in Amazon S3 can
be protected with encryption. For more information, see [Encrypting Your
Audit
Reports](https://docs.aws.amazon.com/privateca/latest/userguide/PcaAuditReport.html#audit-report-encryption).

You can generate a maximum of one report every 30 minutes.

### Usage

    acmpca_create_certificate_authority_audit_report(
      CertificateAuthorityArn, S3BucketName, AuditReportResponseFormat)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="acmpca_create_certificate_authority_audit_report_:_CertificateAuthorityArn">CertificateAuthorityArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the CA to be
audited. This is of the form:</p>
<p><code>arn:aws:acm-pca:region:account:certificate-authority/12345678-1234-1234-1234-123456789012 </code>.</p></td>
</tr>
<tr class="even">
<td><code
id="acmpca_create_certificate_authority_audit_report_:_S3BucketName">S3BucketName</code></td>
<td><p>[required] The name of the S3 bucket that will contain the audit
report.</p></td>
</tr>
<tr class="odd">
<td><code
id="acmpca_create_certificate_authority_audit_report_:_AuditReportResponseFormat">AuditReportResponseFormat</code></td>
<td><p>[required] The format in which to create the report. This can be
either <strong>JSON</strong> or <strong>CSV</strong>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      AuditReportId = "string",
      S3Key = "string"
    )

### Request syntax

    svc$create_certificate_authority_audit_report(
      CertificateAuthorityArn = "string",
      S3BucketName = "string",
      AuditReportResponseFormat = "JSON"|"CSV"
    )
