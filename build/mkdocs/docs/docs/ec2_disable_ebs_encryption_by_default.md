<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_disable_ebs_encryption_by_default</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Disables EBS encryption by default for your account in the current Region

### Description

Disables EBS encryption by default for your account in the current
Region.

After you disable encryption by default, you can still create encrypted
volumes by enabling encryption when you create each volume.

Disabling encryption by default does not change the encryption status of
your existing volumes.

For more information, see [Amazon EBS
encryption](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSEncryption.html)
in the *Amazon Elastic Compute Cloud User Guide*.

### Usage

    ec2_disable_ebs_encryption_by_default(DryRun)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_disable_ebs_encryption_by_default_:_DryRun">DryRun</code></td>
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

    svc$disable_ebs_encryption_by_default(
      DryRun = TRUE|FALSE
    )
