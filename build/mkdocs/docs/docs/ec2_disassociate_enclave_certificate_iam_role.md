<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_disassociate_enclave_certificate_iam_role</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Disassociates an IAM role from an Certificate Manager (ACM) certificate

### Description

Disassociates an IAM role from an Certificate Manager (ACM) certificate.
Disassociating an IAM role from an ACM certificate removes the Amazon S3
object that contains the certificate, certificate chain, and encrypted
private key from the Amazon S3 bucket. It also revokes the IAM role's
permission to use the KMS key used to encrypt the private key. This
effectively revokes the role's permission to use the certificate.

### Usage

    ec2_disassociate_enclave_certificate_iam_role(CertificateArn, RoleArn,
      DryRun)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_disassociate_enclave_certificate_iam_role_:_CertificateArn">CertificateArn</code></td>
<td><p>[required] The ARN of the ACM certificate from which to
disassociate the IAM role.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_disassociate_enclave_certificate_iam_role_:_RoleArn">RoleArn</code></td>
<td><p>[required] The ARN of the IAM role to disassociate.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_disassociate_enclave_certificate_iam_role_:_DryRun">DryRun</code></td>
<td><p>Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Return = TRUE|FALSE
    )

### Request syntax

    svc$disassociate_enclave_certificate_iam_role(
      CertificateArn = "string",
      RoleArn = "string",
      DryRun = TRUE|FALSE
    )
