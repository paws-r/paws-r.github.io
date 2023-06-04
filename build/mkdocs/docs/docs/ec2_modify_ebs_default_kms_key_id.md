<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_modify_ebs_default_kms_key_id</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Changes the default KMS key for EBS encryption by default for your account in this Region

### Description

Changes the default KMS key for EBS encryption by default for your
account in this Region.

Amazon Web Services creates a unique Amazon Web Services managed KMS key
in each Region for use with encryption by default. If you change the
default KMS key to a symmetric customer managed KMS key, it is used
instead of the Amazon Web Services managed KMS key. To reset the default
KMS key to the Amazon Web Services managed KMS key for EBS, use
`reset_ebs_default_kms_key_id`. Amazon EBS does not support asymmetric
KMS keys.

If you delete or disable the customer managed KMS key that you specified
for use with encryption by default, your instances will fail to launch.

For more information, see [Amazon EBS
encryption](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSEncryption.html)
in the *Amazon Elastic Compute Cloud User Guide*.

### Usage

    ec2_modify_ebs_default_kms_key_id(KmsKeyId, DryRun)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_modify_ebs_default_kms_key_id_:_KmsKeyId">KmsKeyId</code></td>
<td><p>[required] The identifier of the Key Management Service (KMS) KMS
key to use for Amazon EBS encryption. If this parameter is not
specified, your KMS key for Amazon EBS is used. If <code>KmsKeyId</code>
is specified, the encrypted state must be <code>true</code>.</p>
<p>You can specify the KMS key using any of the following:</p>
<ul>
<li><p>Key ID. For example,
1234abcd-12ab-34cd-56ef-1234567890ab.</p></li>
<li><p>Key alias. For example, alias/ExampleAlias.</p></li>
<li><p>Key ARN. For example,
arn:aws:kms:us-east-1:012345678910:key/1234abcd-12ab-34cd-56ef-1234567890ab.</p></li>
<li><p>Alias ARN. For example,
arn:aws:kms:us-east-1:012345678910:alias/ExampleAlias.</p></li>
</ul>
<p>Amazon Web Services authenticates the KMS key asynchronously.
Therefore, if you specify an ID, alias, or ARN that is not valid, the
action can appear to complete, but eventually fails.</p>
<p>Amazon EBS does not support asymmetric KMS keys.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_modify_ebs_default_kms_key_id_:_DryRun">DryRun</code></td>
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

    svc$modify_ebs_default_kms_key_id(
      KmsKeyId = "string",
      DryRun = TRUE|FALSE
    )
