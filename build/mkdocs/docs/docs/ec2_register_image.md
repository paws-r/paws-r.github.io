<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_register_image</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Registers an AMI

### Description

Registers an AMI. When you're creating an AMI, this is the final step
you must complete before you can launch an instance from the AMI. For
more information about creating AMIs, see [Create your own
AMI](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/AMIs.html#creating-an-ami)
in the *Amazon Elastic Compute Cloud User Guide*.

For Amazon EBS-backed instances, `create_image` creates and registers
the AMI in a single request, so you don't have to register the AMI
yourself. We recommend that you always use `create_image` unless you
have a specific reason to use RegisterImage.

If needed, you can deregister an AMI at any time. Any modifications you
make to an AMI backed by an instance store volume invalidates its
registration. If you make changes to an image, deregister the previous
image and register the new image.

**Register a snapshot of a root device volume**

You can use `register_image` to create an Amazon EBS-backed Linux AMI
from a snapshot of a root device volume. You specify the snapshot using
a block device mapping. You can't set the encryption state of the volume
using the block device mapping. If the snapshot is encrypted, or
encryption by default is enabled, the root volume of an instance
launched from the AMI is encrypted.

For more information, see [Create a Linux AMI from a
snapshot](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/creating-an-ami-ebs.html#creating-launching-ami-from-snapshot)
and [Use encryption with Amazon EBS-backed
AMIs](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/AMIEncryption.html)
in the *Amazon Elastic Compute Cloud User Guide*.

**Amazon Web Services Marketplace product codes**

If any snapshots have Amazon Web Services Marketplace product codes,
they are copied to the new AMI.

Windows and some Linux distributions, such as Red Hat Enterprise Linux
(RHEL) and SUSE Linux Enterprise Server (SLES), use the Amazon EC2
billing product code associated with an AMI to verify the subscription
status for package updates. To create a new AMI for operating systems
that require a billing product code, instead of registering the AMI, do
the following to preserve the billing product code association:

1.  Launch an instance from an existing AMI with that billing product
    code.

2.  Customize the instance.

3.  Create an AMI from the instance using `create_image`.

If you purchase a Reserved Instance to apply to an On-Demand Instance
that was launched from an AMI with a billing product code, make sure
that the Reserved Instance has the matching billing product code. If you
purchase a Reserved Instance without the matching billing product code,
the Reserved Instance will not be applied to the On-Demand Instance. For
information about how to obtain the platform details and billing
information of an AMI, see [Understand AMI billing
information](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ami-billing-info.html)
in the *Amazon EC2 User Guide*.

### Usage

    ec2_register_image(ImageLocation, Architecture, BlockDeviceMappings,
      Description, DryRun, EnaSupport, KernelId, Name, BillingProducts,
      RamdiskId, RootDeviceName, SriovNetSupport, VirtualizationType,
      BootMode, TpmSupport, UefiData, ImdsSupport)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_register_image_:_ImageLocation">ImageLocation</code></td>
<td><p>The full path to your AMI manifest in Amazon S3 storage. The
specified bucket must have the <code>aws-exec-read</code> canned access
control list (ACL) to ensure that it can be accessed by Amazon EC2. For
more information, see <a
href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/acl-overview.html#canned-acl">Canned
ACLs</a> in the <em>Amazon S3 Service Developer Guide</em>.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_register_image_:_Architecture">Architecture</code></td>
<td><p>The architecture of the AMI.</p>
<p>Default: For Amazon EBS-backed AMIs, <code>i386</code>. For instance
store-backed AMIs, the architecture specified in the manifest
file.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_register_image_:_BlockDeviceMappings">BlockDeviceMappings</code></td>
<td><p>The block device mapping entries.</p>
<p>If you specify an Amazon EBS volume using the ID of an Amazon EBS
snapshot, you can't specify the encryption state of the volume.</p>
<p>If you create an AMI on an Outpost, then all backing snapshots must
be on the same Outpost or in the Region of that Outpost. AMIs on an
Outpost that include local snapshots can be used to launch instances on
the same Outpost only. For more information, <a
href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/snapshots-outposts.html#ami">Amazon
EBS local snapshots on Outposts</a> in the <em>Amazon EC2 User
Guide</em>.</p></td>
</tr>
<tr class="even">
<td><code id="ec2_register_image_:_Description">Description</code></td>
<td><p>A description for your AMI.</p></td>
</tr>
<tr class="odd">
<td><code id="ec2_register_image_:_DryRun">DryRun</code></td>
<td><p>Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
<tr class="even">
<td><code id="ec2_register_image_:_EnaSupport">EnaSupport</code></td>
<td><p>Set to <code>true</code> to enable enhanced networking with ENA
for the AMI and any instances that you launch from the AMI.</p>
<p>This option is supported only for HVM AMIs. Specifying this option
with a PV AMI can make instances launched from the AMI
unreachable.</p></td>
</tr>
<tr class="odd">
<td><code id="ec2_register_image_:_KernelId">KernelId</code></td>
<td><p>The ID of the kernel.</p></td>
</tr>
<tr class="even">
<td><code id="ec2_register_image_:_Name">Name</code></td>
<td><p>[required] A name for your AMI.</p>
<p>Constraints: 3-128 alphanumeric characters, parentheses (()), square
brackets ([]), spaces ( ), periods (.), slashes (/), dashes (-), single
quotes ('), at-signs (@), or underscores(_)</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_register_image_:_BillingProducts">BillingProducts</code></td>
<td><p>The billing product codes. Your account must be authorized to
specify billing product codes.</p>
<p>If your account is not authorized to specify billing product codes,
you can publish AMIs that include billable software and list them on the
Amazon Web Services Marketplace. You must first register as a seller on
the Amazon Web Services Marketplace. For more information, see <a
href="https://docs.aws.amazon.com/marketplace/latest/userguide/user-guide-for-sellers.html">Getting
started as a seller</a> and <a
href="https://docs.aws.amazon.com/marketplace/latest/userguide/ami-products.html">AMI-based
products</a> in the <em>Amazon Web Services Marketplace Seller
Guide</em>.</p></td>
</tr>
<tr class="even">
<td><code id="ec2_register_image_:_RamdiskId">RamdiskId</code></td>
<td><p>The ID of the RAM disk.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_register_image_:_RootDeviceName">RootDeviceName</code></td>
<td><p>The device name of the root device volume (for example, <code
style="white-space: pre;">⁠/dev/sda1⁠</code>).</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_register_image_:_SriovNetSupport">SriovNetSupport</code></td>
<td><p>Set to <code>simple</code> to enable enhanced networking with the
Intel 82599 Virtual Function interface for the AMI and any instances
that you launch from the AMI.</p>
<p>There is no way to disable <code>sriovNetSupport</code> at this
time.</p>
<p>This option is supported only for HVM AMIs. Specifying this option
with a PV AMI can make instances launched from the AMI
unreachable.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_register_image_:_VirtualizationType">VirtualizationType</code></td>
<td><p>The type of virtualization (<code>hvm</code> |
<code>paravirtual</code>).</p>
<p>Default: <code>paravirtual</code></p></td>
</tr>
<tr class="even">
<td><code id="ec2_register_image_:_BootMode">BootMode</code></td>
<td><p>The boot mode of the AMI. A value of <code>uefi-preferred</code>
indicates that the AMI supports both UEFI and Legacy BIOS.</p>
<p>The operating system contained in the AMI must be configured to
support the specified boot mode.</p>
<p>For more information, see <a
href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ami-boot.html">Boot
modes</a> in the <em>Amazon EC2 User Guide</em>.</p></td>
</tr>
<tr class="odd">
<td><code id="ec2_register_image_:_TpmSupport">TpmSupport</code></td>
<td><p>Set to <code>v2.0</code> to enable Trusted Platform Module (TPM)
support. For more information, see <a
href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/nitrotpm.html">NitroTPM</a>
in the <em>Amazon EC2 User Guide</em>.</p></td>
</tr>
<tr class="even">
<td><code id="ec2_register_image_:_UefiData">UefiData</code></td>
<td><p>Base64 representation of the non-volatile UEFI variable store. To
retrieve the UEFI data, use the <code>get_instance_uefi_data</code>
command. You can inspect and modify the UEFI data by using the <a
href="https://github.com/awslabs/python-uefivars">python-uefivars
tool</a> on GitHub. For more information, see <a
href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/uefi-secure-boot.html">UEFI
Secure Boot</a> in the <em>Amazon EC2 User Guide</em>.</p></td>
</tr>
<tr class="odd">
<td><code id="ec2_register_image_:_ImdsSupport">ImdsSupport</code></td>
<td><p>Set to <code>v2.0</code> to indicate that IMDSv2 is specified in
the AMI. Instances launched from this AMI will have
<code>HttpTokens</code> automatically set to <code>required</code> so
that, by default, the instance requires that IMDSv2 is used when
requesting instance metadata. In addition,
<code>HttpPutResponseHopLimit</code> is set to <code>2</code>. For more
information, see <a
href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/configuring-IMDS-new-instances.html#configure-IMDS-new-instances-ami-configuration">Configure
the AMI</a> in the <em>Amazon EC2 User Guide</em>.</p>
<p>If you set the value to <code>v2.0</code>, make sure that your AMI
software can support IMDSv2.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ImageId = "string"
    )

### Request syntax

    svc$register_image(
      ImageLocation = "string",
      Architecture = "i386"|"x86_64"|"arm64"|"x86_64_mac"|"arm64_mac",
      BlockDeviceMappings = list(
        list(
          DeviceName = "string",
          VirtualName = "string",
          Ebs = list(
            DeleteOnTermination = TRUE|FALSE,
            Iops = 123,
            SnapshotId = "string",
            VolumeSize = 123,
            VolumeType = "standard"|"io1"|"io2"|"gp2"|"sc1"|"st1"|"gp3",
            KmsKeyId = "string",
            Throughput = 123,
            OutpostArn = "string",
            Encrypted = TRUE|FALSE
          ),
          NoDevice = "string"
        )
      ),
      Description = "string",
      DryRun = TRUE|FALSE,
      EnaSupport = TRUE|FALSE,
      KernelId = "string",
      Name = "string",
      BillingProducts = list(
        "string"
      ),
      RamdiskId = "string",
      RootDeviceName = "string",
      SriovNetSupport = "string",
      VirtualizationType = "string",
      BootMode = "legacy-bios"|"uefi"|"uefi-preferred",
      TpmSupport = "v2.0",
      UefiData = "string",
      ImdsSupport = "v2.0"
    )
