<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_import_image</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## To import your virtual machines (VMs) with a console-based experience, you can use the Import virtual machine images to Amazon Web Services template in the Migration Hub Orchestrator console

### Description

To import your virtual machines (VMs) with a console-based experience,
you can use the *Import virtual machine images to Amazon Web Services*
template in the Migration Hub Orchestrator console. For more
information, see the [*Migration Hub Orchestrator User
Guide*](https://docs.aws.amazon.com/migrationhub-orchestrator/latest/userguide/import-vm-images.html)
.

Import single or multi-volume disk images or EBS snapshots into an
Amazon Machine Image (AMI).

Amazon Web Services VM Import/Export strongly recommends specifying a
value for either the `--license-type` or `--usage-operation` parameter
when you create a new VM Import task. This ensures your operating system
is licensed appropriately and your billing is optimized.

For more information, see [Importing a VM as an image using VM
Import/Export](https://docs.aws.amazon.com/vm-import/latest/userguide/vmimport-image-import.html)
in the *VM Import/Export User Guide*.

### Usage

    ec2_import_image(Architecture, ClientData, ClientToken, Description,
      DiskContainers, DryRun, Encrypted, Hypervisor, KmsKeyId, LicenseType,
      Platform, RoleName, LicenseSpecifications, TagSpecifications,
      UsageOperation, BootMode)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ec2_import_image_:_Architecture">Architecture</code></td>
<td><p>The architecture of the virtual machine.</p>
<p>Valid values: <code>i386</code> | <code>x86_64</code></p></td>
</tr>
<tr class="even">
<td><code id="ec2_import_image_:_ClientData">ClientData</code></td>
<td><p>The client-specific data.</p></td>
</tr>
<tr class="odd">
<td><code id="ec2_import_image_:_ClientToken">ClientToken</code></td>
<td><p>The token to enable idempotency for VM import requests.</p></td>
</tr>
<tr class="even">
<td><code id="ec2_import_image_:_Description">Description</code></td>
<td><p>A description string for the import image task.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_import_image_:_DiskContainers">DiskContainers</code></td>
<td><p>Information about the disk containers.</p></td>
</tr>
<tr class="even">
<td><code id="ec2_import_image_:_DryRun">DryRun</code></td>
<td><p>Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
<tr class="odd">
<td><code id="ec2_import_image_:_Encrypted">Encrypted</code></td>
<td><p>Specifies whether the destination AMI of the imported image
should be encrypted. The default KMS key for EBS is used unless you
specify a non-default KMS key using <code>KmsKeyId</code>. For more
information, see <a
href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSEncryption.html">Amazon
EBS Encryption</a> in the <em>Amazon Elastic Compute Cloud User
Guide</em>.</p></td>
</tr>
<tr class="even">
<td><code id="ec2_import_image_:_Hypervisor">Hypervisor</code></td>
<td><p>The target hypervisor platform.</p>
<p>Valid values: <code>xen</code></p></td>
</tr>
<tr class="odd">
<td><code id="ec2_import_image_:_KmsKeyId">KmsKeyId</code></td>
<td><p>An identifier for the symmetric KMS key to use when creating the
encrypted AMI. This parameter is only required if you want to use a
non-default KMS key; if this parameter is not specified, the default KMS
key for EBS is used. If a <code>KmsKeyId</code> is specified, the
<code>Encrypted</code> flag must also be set.</p>
<p>The KMS key identifier may be provided in any of the following
formats:</p>
<ul>
<li><p>Key ID</p></li>
<li><p>Key alias. The alias ARN contains the <code>arn:aws:kms</code>
namespace, followed by the Region of the key, the Amazon Web Services
account ID of the key owner, the <code>alias</code> namespace, and then
the key alias. For example,
arn:aws:kms:<em>us-east-1</em>:<em>012345678910</em>:alias/<em>ExampleAlias</em>.</p></li>
<li><p>ARN using key ID. The ID ARN contains the
<code>arn:aws:kms</code> namespace, followed by the Region of the key,
the Amazon Web Services account ID of the key owner, the
<code>key</code> namespace, and then the key ID. For example,
arn:aws:kms:<em>us-east-1</em>:<em>012345678910</em>:key/<em>abcd1234-a123-456a-a12b-a123b4cd56ef</em>.</p></li>
<li><p>ARN using key alias. The alias ARN contains the
<code>arn:aws:kms</code> namespace, followed by the Region of the key,
the Amazon Web Services account ID of the key owner, the
<code>alias</code> namespace, and then the key alias. For example,
arn:aws:kms:<em>us-east-1</em>:<em>012345678910</em>:alias/<em>ExampleAlias</em>.</p></li>
</ul>
<p>Amazon Web Services parses <code>KmsKeyId</code> asynchronously,
meaning that the action you call may appear to complete even though you
provided an invalid identifier. This action will eventually report
failure.</p>
<p>The specified KMS key must exist in the Region that the AMI is being
copied to.</p>
<p>Amazon EBS does not support asymmetric KMS keys.</p></td>
</tr>
<tr class="even">
<td><code id="ec2_import_image_:_LicenseType">LicenseType</code></td>
<td><p>The license type to be used for the Amazon Machine Image (AMI)
after importing.</p>
<p>Specify <code>AWS</code> to replace the source-system license with an
Amazon Web Services license or <code>BYOL</code> to retain the
source-system license. Leaving this parameter undefined is the same as
choosing <code>AWS</code> when importing a Windows Server operating
system, and the same as choosing <code>BYOL</code> when importing a
Windows client operating system (such as Windows 10) or a Linux
operating system.</p>
<p>To use <code>BYOL</code>, you must have existing licenses with rights
to use these licenses in a third party cloud, such as Amazon Web
Services. For more information, see <a
href="https://docs.aws.amazon.com/vm-import/latest/userguide/vmimport-image-import.html#prerequisites-image">Prerequisites</a>
in the VM Import/Export User Guide.</p></td>
</tr>
<tr class="odd">
<td><code id="ec2_import_image_:_Platform">Platform</code></td>
<td><p>The operating system of the virtual machine.</p>
<p>Valid values: <code>Windows</code> | <code>Linux</code></p></td>
</tr>
<tr class="even">
<td><code id="ec2_import_image_:_RoleName">RoleName</code></td>
<td><p>The name of the role to use when not using the default role,
'vmimport'.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_import_image_:_LicenseSpecifications">LicenseSpecifications</code></td>
<td><p>The ARNs of the license configurations.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_import_image_:_TagSpecifications">TagSpecifications</code></td>
<td><p>The tags to apply to the import image task during
creation.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_import_image_:_UsageOperation">UsageOperation</code></td>
<td><p>The usage operation value. For more information, see <a
href="https://docs.aws.amazon.com/vm-import/latest/userguide/vmie_prereqs.html#prerequisites">Licensing
options</a> in the <em>VM Import/Export User Guide</em>.</p></td>
</tr>
<tr class="even">
<td><code id="ec2_import_image_:_BootMode">BootMode</code></td>
<td><p>The boot mode of the virtual machine.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Architecture = "string",
      Description = "string",
      Encrypted = TRUE|FALSE,
      Hypervisor = "string",
      ImageId = "string",
      ImportTaskId = "string",
      KmsKeyId = "string",
      LicenseType = "string",
      Platform = "string",
      Progress = "string",
      SnapshotDetails = list(
        list(
          Description = "string",
          DeviceName = "string",
          DiskImageSize = 123.0,
          Format = "string",
          Progress = "string",
          SnapshotId = "string",
          Status = "string",
          StatusMessage = "string",
          Url = "string",
          UserBucket = list(
            S3Bucket = "string",
            S3Key = "string"
          )
        )
      ),
      Status = "string",
      StatusMessage = "string",
      LicenseSpecifications = list(
        list(
          LicenseConfigurationArn = "string"
        )
      ),
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      ),
      UsageOperation = "string"
    )

### Request syntax

    svc$import_image(
      Architecture = "string",
      ClientData = list(
        Comment = "string",
        UploadEnd = as.POSIXct(
          "2015-01-01"
        ),
        UploadSize = 123.0,
        UploadStart = as.POSIXct(
          "2015-01-01"
        )
      ),
      ClientToken = "string",
      Description = "string",
      DiskContainers = list(
        list(
          Description = "string",
          DeviceName = "string",
          Format = "string",
          SnapshotId = "string",
          Url = "string",
          UserBucket = list(
            S3Bucket = "string",
            S3Key = "string"
          )
        )
      ),
      DryRun = TRUE|FALSE,
      Encrypted = TRUE|FALSE,
      Hypervisor = "string",
      KmsKeyId = "string",
      LicenseType = "string",
      Platform = "string",
      RoleName = "string",
      LicenseSpecifications = list(
        list(
          LicenseConfigurationArn = "string"
        )
      ),
      TagSpecifications = list(
        list(
          ResourceType = "capacity-reservation"|"client-vpn-endpoint"|"customer-gateway"|"carrier-gateway"|"coip-pool"|"dedicated-host"|"dhcp-options"|"egress-only-internet-gateway"|"elastic-ip"|"elastic-gpu"|"export-image-task"|"export-instance-task"|"fleet"|"fpga-image"|"host-reservation"|"image"|"import-image-task"|"import-snapshot-task"|"instance"|"instance-event-window"|"internet-gateway"|"ipam"|"ipam-pool"|"ipam-scope"|"ipv4pool-ec2"|"ipv6pool-ec2"|"key-pair"|"launch-template"|"local-gateway"|"local-gateway-route-table"|"local-gateway-virtual-interface"|"local-gateway-virtual-interface-group"|"local-gateway-route-table-vpc-association"|"local-gateway-route-table-virtual-interface-group-association"|"natgateway"|"network-acl"|"network-interface"|"network-insights-analysis"|"network-insights-path"|"network-insights-access-scope"|"network-insights-access-scope-analysis"|"placement-group"|"prefix-list"|"replace-root-volume-task"|"reserved-instances"|"route-table"|"security-group"|"security-group-rule"|"snapshot"|"spot-fleet-request"|"spot-instances-request"|"subnet"|"subnet-cidr-reservation"|"traffic-mirror-filter"|"traffic-mirror-session"|"traffic-mirror-target"|"transit-gateway"|"transit-gateway-attachment"|"transit-gateway-connect-peer"|"transit-gateway-multicast-domain"|"transit-gateway-policy-table"|"transit-gateway-route-table"|"transit-gateway-route-table-announcement"|"volume"|"vpc"|"vpc-endpoint"|"vpc-endpoint-connection"|"vpc-endpoint-service"|"vpc-endpoint-service-permission"|"vpc-peering-connection"|"vpn-connection"|"vpn-gateway"|"vpc-flow-log"|"capacity-reservation-fleet"|"traffic-mirror-filter-rule"|"vpc-endpoint-connection-device-type"|"verified-access-instance"|"verified-access-group"|"verified-access-endpoint"|"verified-access-policy"|"verified-access-trust-provider"|"vpn-connection-device-type"|"vpc-block-public-access-exclusion"|"ipam-resource-discovery"|"ipam-resource-discovery-association",
          Tags = list(
            list(
              Key = "string",
              Value = "string"
            )
          )
        )
      ),
      UsageOperation = "string",
      BootMode = "legacy-bios"|"uefi"|"uefi-preferred"
    )
