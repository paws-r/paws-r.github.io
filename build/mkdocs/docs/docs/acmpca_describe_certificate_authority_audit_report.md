<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>acmpca_describe_certificate_authority_audit_report</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists information about a specific audit report created by calling the CreateCertificateAuthorityAuditReport action

### Description

Lists information about a specific audit report created by calling the
`create_certificate_authority_audit_report` action. Audit information is
created every time the certificate authority (CA) private key is used.
The private key is used when you call the `issue_certificate` action or
the `revoke_certificate` action.

### Usage

    acmpca_describe_certificate_authority_audit_report(
      CertificateAuthorityArn, AuditReportId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="acmpca_describe_certificate_authority_audit_report_:_CertificateAuthorityArn">CertificateAuthorityArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the private CA. This
must be of the form:</p>
<p><code>arn:aws:acm-pca:region:account:certificate-authority/12345678-1234-1234-1234-123456789012 </code>.</p></td>
</tr>
<tr class="even">
<td><code
id="acmpca_describe_certificate_authority_audit_report_:_AuditReportId">AuditReportId</code></td>
<td><p>[required] The report ID returned by calling the
<code>create_certificate_authority_audit_report</code> action.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      AuditReportStatus = "CREATING"|"SUCCESS"|"FAILED",
      S3BucketName = "string",
      S3Key = "string",
      CreatedAt = as.POSIXct(
        "2015-01-01"
      )
    )

### Request syntax

    svc$describe_certificate_authority_audit_report(
      CertificateAuthorityArn = "string",
      AuditReportId = "string"
    )
