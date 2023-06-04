<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_get_associated_enclave_certificate_iam_roles</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns the IAM roles that are associated with the specified ACM (ACM) certificate

### Description

Returns the IAM roles that are associated with the specified ACM (ACM)
certificate. It also returns the name of the Amazon S3 bucket and the
Amazon S3 object key where the certificate, certificate chain, and
encrypted private key bundle are stored, and the ARN of the KMS key
that's used to encrypt the private key.

### Usage

    ec2_get_associated_enclave_certificate_iam_roles(CertificateArn, DryRun)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_get_associated_enclave_certificate_iam_roles_:_CertificateArn">CertificateArn</code></td>
<td><p>[required] The ARN of the ACM certificate for which to view the
associated IAM roles, encryption keys, and Amazon S3 object
information.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_get_associated_enclave_certificate_iam_roles_:_DryRun">DryRun</code></td>
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
      AssociatedRoles = list(
        list(
          AssociatedRoleArn = "string",
          CertificateS3BucketName = "string",
          CertificateS3ObjectKey = "string",
          EncryptionKmsKeyId = "string"
        )
      )
    )

### Request syntax

    svc$get_associated_enclave_certificate_iam_roles(
      CertificateArn = "string",
      DryRun = TRUE|FALSE
    )
