<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_import_snapshot</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Imports a disk into an EBS snapshot

### Description

Imports a disk into an EBS snapshot.

For more information, see [Importing a disk as a snapshot using VM
Import/Export](https://docs.aws.amazon.com/vm-import/latest/userguide/vmimport-import-snapshot.html)
in the *VM Import/Export User Guide*.

### Usage

    ec2_import_snapshot(ClientData, ClientToken, Description, DiskContainer,
      DryRun, Encrypted, KmsKeyId, RoleName, TagSpecifications)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ec2_import_snapshot_:_ClientData">ClientData</code></td>
<td><p>The client-specific data.</p></td>
</tr>
<tr class="even">
<td><code id="ec2_import_snapshot_:_ClientToken">ClientToken</code></td>
<td><p>Token to enable idempotency for VM import requests.</p></td>
</tr>
<tr class="odd">
<td><code id="ec2_import_snapshot_:_Description">Description</code></td>
<td><p>The description string for the import snapshot task.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_import_snapshot_:_DiskContainer">DiskContainer</code></td>
<td><p>Information about the disk container.</p></td>
</tr>
<tr class="odd">
<td><code id="ec2_import_snapshot_:_DryRun">DryRun</code></td>
<td><p>Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
<tr class="even">
<td><code id="ec2_import_snapshot_:_Encrypted">Encrypted</code></td>
<td><p>Specifies whether the destination snapshot of the imported image
should be encrypted. The default KMS key for EBS is used unless you
specify a non-default KMS key using <code>KmsKeyId</code>. For more
information, see <a
href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSEncryption.html">Amazon
EBS Encryption</a> in the <em>Amazon Elastic Compute Cloud User
Guide</em>.</p></td>
</tr>
<tr class="odd">
<td><code id="ec2_import_snapshot_:_KmsKeyId">KmsKeyId</code></td>
<td><p>An identifier for the symmetric KMS key to use when creating the
encrypted snapshot. This parameter is only required if you want to use a
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
<p>The specified KMS key must exist in the Region that the snapshot is
being copied to.</p>
<p>Amazon EBS does not support asymmetric KMS keys.</p></td>
</tr>
<tr class="even">
<td><code id="ec2_import_snapshot_:_RoleName">RoleName</code></td>
<td><p>The name of the role to use when not using the default role,
'vmimport'.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_import_snapshot_:_TagSpecifications">TagSpecifications</code></td>
<td><p>The tags to apply to the import snapshot task during
creation.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Description = "string",
      ImportTaskId = "string",
      SnapshotTaskDetail = list(
        Description = "string",
        DiskImageSize = 123.0,
        Encrypted = TRUE|FALSE,
        Format = "string",
        KmsKeyId = "string",
        Progress = "string",
        SnapshotId = "string",
        Status = "string",
        StatusMessage = "string",
        Url = "string",
        UserBucket = list(
          S3Bucket = "string",
          S3Key = "string"
        )
      ),
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )

### Request syntax

    svc$import_snapshot(
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
      DiskContainer = list(
        Description = "string",
        Format = "string",
        Url = "string",
        UserBucket = list(
          S3Bucket = "string",
          S3Key = "string"
        )
      ),
      DryRun = TRUE|FALSE,
      Encrypted = TRUE|FALSE,
      KmsKeyId = "string",
      RoleName = "string",
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
      )
    )
