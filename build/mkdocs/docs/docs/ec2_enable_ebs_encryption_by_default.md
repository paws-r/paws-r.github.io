<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_enable_ebs_encryption_by_default</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Enables EBS encryption by default for your account in the current Region

### Description

Enables EBS encryption by default for your account in the current
Region.

After you enable encryption by default, the EBS volumes that you create
are always encrypted, either using the default KMS key or the KMS key
that you specified when you created each volume. For more information,
see [Amazon EBS
encryption](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSEncryption.html)
in the *Amazon Elastic Compute Cloud User Guide*.

You can specify the default KMS key for encryption by default using
`modify_ebs_default_kms_key_id` or `reset_ebs_default_kms_key_id`.

Enabling encryption by default has no effect on the encryption status of
your existing volumes.

After you enable encryption by default, you can no longer launch
instances using instance types that do not support encryption. For more
information, see [Supported instance
types](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSEncryption.html#EBSEncryption_supported_instances).

### Usage

    ec2_enable_ebs_encryption_by_default(DryRun)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_enable_ebs_encryption_by_default_:_DryRun">DryRun</code></td>
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
      EbsEncryptionByDefault = TRUE|FALSE
    )

### Request syntax

    svc$enable_ebs_encryption_by_default(
      DryRun = TRUE|FALSE
    )
