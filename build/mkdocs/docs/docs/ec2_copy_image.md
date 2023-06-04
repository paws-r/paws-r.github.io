<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_copy_image</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Initiates the copy of an AMI

### Description

Initiates the copy of an AMI. You can copy an AMI from one Region to
another, or from a Region to an Outpost. You can't copy an AMI from an
Outpost to a Region, from one Outpost to another, or within the same
Outpost. To copy an AMI to another partition, see
`create_store_image_task`.

To copy an AMI from one Region to another, specify the source Region
using the **SourceRegion** parameter, and specify the destination Region
using its endpoint. Copies of encrypted backing snapshots for the AMI
are encrypted. Copies of unencrypted backing snapshots remain
unencrypted, unless you set `Encrypted` during the copy operation. You
cannot create an unencrypted copy of an encrypted backing snapshot.

To copy an AMI from a Region to an Outpost, specify the source Region
using the **SourceRegion** parameter, and specify the ARN of the
destination Outpost using **DestinationOutpostArn**. Backing snapshots
copied to an Outpost are encrypted by default using the default
encryption key for the Region, or a different key that you specify in
the request using **KmsKeyId**. Outposts do not support unencrypted
snapshots. For more information, [Amazon EBS local snapshots on
Outposts](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/snapshots-outposts.html#ami)
in the *Amazon EC2 User Guide*.

For more information about the prerequisites and limits when copying an
AMI, see [Copy an
AMI](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/CopyingAMIs.html)
in the *Amazon EC2 User Guide*.

### Usage

    ec2_copy_image(ClientToken, Description, Encrypted, KmsKeyId, Name,
      SourceImageId, SourceRegion, DestinationOutpostArn, DryRun,
      CopyImageTags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ec2_copy_image_:_ClientToken">ClientToken</code></td>
<td><p>Unique, case-sensitive identifier you provide to ensure
idempotency of the request. For more information, see <a
href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">Ensuring
idempotency</a> in the <em>Amazon EC2 API Reference</em>.</p></td>
</tr>
<tr class="even">
<td><code id="ec2_copy_image_:_Description">Description</code></td>
<td><p>A description for the new AMI in the destination Region.</p></td>
</tr>
<tr class="odd">
<td><code id="ec2_copy_image_:_Encrypted">Encrypted</code></td>
<td><p>Specifies whether the destination snapshots of the copied image
should be encrypted. You can encrypt a copy of an unencrypted snapshot,
but you cannot create an unencrypted copy of an encrypted snapshot. The
default KMS key for Amazon EBS is used unless you specify a non-default
Key Management Service (KMS) KMS key using <code>KmsKeyId</code>. For
more information, see <a
href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSEncryption.html">Amazon
EBS encryption</a> in the <em>Amazon EC2 User Guide</em>.</p></td>
</tr>
<tr class="even">
<td><code id="ec2_copy_image_:_KmsKeyId">KmsKeyId</code></td>
<td><p>The identifier of the symmetric Key Management Service (KMS) KMS
key to use when creating encrypted volumes. If this parameter is not
specified, your Amazon Web Services managed KMS key for Amazon EBS is
used. If you specify a KMS key, you must also set the encrypted state to
<code>true</code>.</p>
<p>You can specify a KMS key using any of the following:</p>
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
Therefore, if you specify an identifier that is not valid, the action
can appear to complete, but eventually fails.</p>
<p>The specified KMS key must exist in the destination Region.</p>
<p>Amazon EBS does not support asymmetric KMS keys.</p></td>
</tr>
<tr class="odd">
<td><code id="ec2_copy_image_:_Name">Name</code></td>
<td><p>[required] The name of the new AMI in the destination
Region.</p></td>
</tr>
<tr class="even">
<td><code id="ec2_copy_image_:_SourceImageId">SourceImageId</code></td>
<td><p>[required] The ID of the AMI to copy.</p></td>
</tr>
<tr class="odd">
<td><code id="ec2_copy_image_:_SourceRegion">SourceRegion</code></td>
<td><p>[required] The name of the Region that contains the AMI to
copy.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_copy_image_:_DestinationOutpostArn">DestinationOutpostArn</code></td>
<td><p>The Amazon Resource Name (ARN) of the Outpost to which to copy
the AMI. Only specify this parameter when copying an AMI from an Amazon
Web Services Region to an Outpost. The AMI must be in the Region of the
destination Outpost. You cannot copy an AMI from an Outpost to a Region,
from one Outpost to another, or within the same Outpost.</p>
<p>For more information, see <a
href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/snapshots-outposts.html#copy-amis">Copy
AMIs from an Amazon Web Services Region to an Outpost</a> in the
<em>Amazon EC2 User Guide</em>.</p></td>
</tr>
<tr class="odd">
<td><code id="ec2_copy_image_:_DryRun">DryRun</code></td>
<td><p>Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
<tr class="even">
<td><code id="ec2_copy_image_:_CopyImageTags">CopyImageTags</code></td>
<td><p>Indicates whether to include your user-defined AMI tags when
copying the AMI.</p>
<p>The following tags will not be copied:</p>
<ul>
<li><p>System tags (prefixed with <code
style="white-space: pre;">⁠aws:⁠</code>)</p></li>
<li><p>For public and shared AMIs, user-defined tags that are attached
by other Amazon Web Services accounts</p></li>
</ul>
<p>Default: Your user-defined AMI tags are not copied.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ImageId = "string"
    )

### Request syntax

    svc$copy_image(
      ClientToken = "string",
      Description = "string",
      Encrypted = TRUE|FALSE,
      KmsKeyId = "string",
      Name = "string",
      SourceImageId = "string",
      SourceRegion = "string",
      DestinationOutpostArn = "string",
      DryRun = TRUE|FALSE,
      CopyImageTags = TRUE|FALSE
    )

### Examples

    ## Not run: 
    # This example copies the specified AMI from the us-east-1 region to the
    # current region.
    svc$copy_image(
      Description = "",
      Name = "My server",
      SourceImageId = "ami-5731123e",
      SourceRegion = "us-east-1"
    )

    ## End(Not run)
