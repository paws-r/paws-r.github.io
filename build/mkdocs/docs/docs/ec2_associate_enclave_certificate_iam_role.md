<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_associate_enclave_certificate_iam_role</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Associates an Identity and Access Management (IAM) role with an Certificate Manager (ACM) certificate

### Description

Associates an Identity and Access Management (IAM) role with an
Certificate Manager (ACM) certificate. This enables the certificate to
be used by the ACM for Nitro Enclaves application inside an enclave. For
more information, see [Certificate Manager for Nitro
Enclaves](https://docs.aws.amazon.com/enclaves/latest/user/nitro-enclave-refapp.html)
in the *Amazon Web Services Nitro Enclaves User Guide*.

When the IAM role is associated with the ACM certificate, the
certificate, certificate chain, and encrypted private key are placed in
an Amazon S3 location that only the associated IAM role can access. The
private key of the certificate is encrypted with an Amazon Web Services
managed key that has an attached attestation-based key policy.

To enable the IAM role to access the Amazon S3 object, you must grant it
permission to call `s3:GetObject` on the Amazon S3 bucket returned by
the command. To enable the IAM role to access the KMS key, you must
grant it permission to call `kms:Decrypt` on the KMS key returned by the
command. For more information, see [Grant the role permission to access
the certificate and encryption
key](https://docs.aws.amazon.com/enclaves/latest/user/nitro-enclave-refapp.html#add-policy)
in the *Amazon Web Services Nitro Enclaves User Guide*.

### Usage

    ec2_associate_enclave_certificate_iam_role(CertificateArn, RoleArn,
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
id="ec2_associate_enclave_certificate_iam_role_:_CertificateArn">CertificateArn</code></td>
<td><p>[required] The ARN of the ACM certificate with which to associate
the IAM role.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_associate_enclave_certificate_iam_role_:_RoleArn">RoleArn</code></td>
<td><p>[required] The ARN of the IAM role to associate with the ACM
certificate. You can associate up to 16 IAM roles with an ACM
certificate.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_associate_enclave_certificate_iam_role_:_DryRun">DryRun</code></td>
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
      CertificateS3BucketName = "string",
      CertificateS3ObjectKey = "string",
      EncryptionKmsKeyId = "string"
    )

### Request syntax

    svc$associate_enclave_certificate_iam_role(
      CertificateArn = "string",
      RoleArn = "string",
      DryRun = TRUE|FALSE
    )
