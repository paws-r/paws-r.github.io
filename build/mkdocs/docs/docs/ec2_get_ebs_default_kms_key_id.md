<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_get_ebs_default_kms_key_id</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes the default KMS key for EBS encryption by default for your account in this Region

### Description

Describes the default KMS key for EBS encryption by default for your
account in this Region. You can change the default KMS key for
encryption by default using `modify_ebs_default_kms_key_id` or
`reset_ebs_default_kms_key_id`.

For more information, see [Amazon EBS
encryption](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSEncryption.html)
in the *Amazon Elastic Compute Cloud User Guide*.

### Usage

    ec2_get_ebs_default_kms_key_id(DryRun)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_get_ebs_default_kms_key_id_:_DryRun">DryRun</code></td>
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
      KmsKeyId = "string"
    )

### Request syntax

    svc$get_ebs_default_kms_key_id(
      DryRun = TRUE|FALSE
    )
