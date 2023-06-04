<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_create_volume</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates an EBS volume that can be attached to an instance in the same Availability Zone

### Description

Creates an EBS volume that can be attached to an instance in the same
Availability Zone.

You can create a new empty volume or restore a volume from an EBS
snapshot. Any Amazon Web Services Marketplace product codes from the
snapshot are propagated to the volume.

You can create encrypted volumes. Encrypted volumes must be attached to
instances that support Amazon EBS encryption. Volumes that are created
from encrypted snapshots are also automatically encrypted. For more
information, see [Amazon EBS
encryption](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSEncryption.html)
in the *Amazon Elastic Compute Cloud User Guide*.

You can tag your volumes during creation. For more information, see [Tag
your Amazon EC2
resources](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Using_Tags.html)
in the *Amazon Elastic Compute Cloud User Guide*.

For more information, see [Create an Amazon EBS
volume](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-creating-volume.html)
in the *Amazon Elastic Compute Cloud User Guide*.

### Usage

    ec2_create_volume(AvailabilityZone, Encrypted, Iops, KmsKeyId,
      OutpostArn, Size, SnapshotId, VolumeType, DryRun, TagSpecifications,
      MultiAttachEnabled, Throughput, ClientToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_create_volume_:_AvailabilityZone">AvailabilityZone</code></td>
<td><p>[required] The Availability Zone in which to create the
volume.</p></td>
</tr>
<tr class="even">
<td><code id="ec2_create_volume_:_Encrypted">Encrypted</code></td>
<td><p>Indicates whether the volume should be encrypted. The effect of
setting the encryption state to <code>true</code> depends on the volume
origin (new or from a snapshot), starting encryption state, ownership,
and whether encryption by default is enabled. For more information, see
<a
href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSEncryption.html#encryption-by-default">Encryption
by default</a> in the <em>Amazon Elastic Compute Cloud User
Guide</em>.</p>
<p>Encrypted Amazon EBS volumes must be attached to instances that
support Amazon EBS encryption. For more information, see <a
href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSEncryption.html#EBSEncryption_supported_instances">Supported
instance types</a>.</p></td>
</tr>
<tr class="odd">
<td><code id="ec2_create_volume_:_Iops">Iops</code></td>
<td><p>The number of I/O operations per second (IOPS). For
<code>gp3</code>, <code>io1</code>, and <code>io2</code> volumes, this
represents the number of IOPS that are provisioned for the volume. For
<code>gp2</code> volumes, this represents the baseline performance of
the volume and the rate at which the volume accumulates I/O credits for
bursting.</p>
<p>The following are the supported values for each volume type:</p>
<ul>
<li><p><code>gp3</code>: 3,000-16,000 IOPS</p></li>
<li><p><code>io1</code>: 100-64,000 IOPS</p></li>
<li><p><code>io2</code>: 100-64,000 IOPS</p></li>
</ul>
<p><code>io1</code> and <code>io2</code> volumes support up to 64,000
IOPS only on <a
href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html#ec2-nitro-instances">Instances
built on the Nitro System</a>. Other instance families support
performance up to 32,000 IOPS.</p>
<p>This parameter is required for <code>io1</code> and <code>io2</code>
volumes. The default for <code>gp3</code> volumes is 3,000 IOPS. This
parameter is not supported for <code>gp2</code>, <code>st1</code>,
<code>sc1</code>, or <code>standard</code> volumes.</p></td>
</tr>
<tr class="even">
<td><code id="ec2_create_volume_:_KmsKeyId">KmsKeyId</code></td>
<td><p>The identifier of the Key Management Service (KMS) KMS key to use
for Amazon EBS encryption. If this parameter is not specified, your KMS
key for Amazon EBS is used. If <code>KmsKeyId</code> is specified, the
encrypted state must be <code>true</code>.</p>
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
action can appear to complete, but eventually fails.</p></td>
</tr>
<tr class="odd">
<td><code id="ec2_create_volume_:_OutpostArn">OutpostArn</code></td>
<td><p>The Amazon Resource Name (ARN) of the Outpost.</p></td>
</tr>
<tr class="even">
<td><code id="ec2_create_volume_:_Size">Size</code></td>
<td><p>The size of the volume, in GiBs. You must specify either a
snapshot ID or a volume size. If you specify a snapshot, the default is
the snapshot size. You can specify a volume size that is equal to or
larger than the snapshot size.</p>
<p>The following are the supported volumes sizes for each volume
type:</p>
<ul>
<li><p><code>gp2</code> and <code>gp3</code>: 1-16,384</p></li>
<li><p><code>io1</code> and <code>io2</code>: 4-16,384</p></li>
<li><p><code>st1</code> and <code>sc1</code>: 125-16,384</p></li>
<li><p><code>standard</code>: 1-1,024</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code id="ec2_create_volume_:_SnapshotId">SnapshotId</code></td>
<td><p>The snapshot from which to create the volume. You must specify
either a snapshot ID or a volume size.</p></td>
</tr>
<tr class="even">
<td><code id="ec2_create_volume_:_VolumeType">VolumeType</code></td>
<td><p>The volume type. This parameter can be one of the following
values:</p>
<ul>
<li><p>General Purpose SSD: <code>gp2</code> | <code>gp3</code></p></li>
<li><p>Provisioned IOPS SSD: <code>io1</code> |
<code>io2</code></p></li>
<li><p>Throughput Optimized HDD: <code>st1</code></p></li>
<li><p>Cold HDD: <code>sc1</code></p></li>
<li><p>Magnetic: <code>standard</code></p></li>
</ul>
<p>Throughput Optimized HDD (<code>st1</code>) and Cold HDD
(<code>sc1</code>) volumes can't be used as boot volumes.</p>
<p>For more information, see <a
href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-volume-types.html">Amazon
EBS volume types</a> in the <em>Amazon Elastic Compute Cloud User
Guide</em>.</p>
<p>Default: <code>gp2</code></p></td>
</tr>
<tr class="odd">
<td><code id="ec2_create_volume_:_DryRun">DryRun</code></td>
<td><p>Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_create_volume_:_TagSpecifications">TagSpecifications</code></td>
<td><p>The tags to apply to the volume during creation.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_create_volume_:_MultiAttachEnabled">MultiAttachEnabled</code></td>
<td><p>Indicates whether to enable Amazon EBS Multi-Attach. If you
enable Multi-Attach, you can attach the volume to up to 16 <a
href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html#ec2-nitro-instances">Instances
built on the Nitro System</a> in the same Availability Zone. This
parameter is supported with <code>io1</code> and <code>io2</code>
volumes only. For more information, see <a
href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-volumes-multi.html">Amazon
EBS Multi-Attach</a> in the <em>Amazon Elastic Compute Cloud User
Guide</em>.</p></td>
</tr>
<tr class="even">
<td><code id="ec2_create_volume_:_Throughput">Throughput</code></td>
<td><p>The throughput to provision for a volume, with a maximum of 1,000
MiB/s.</p>
<p>This parameter is valid only for <code>gp3</code> volumes.</p>
<p>Valid Range: Minimum value of 125. Maximum value of 1000.</p></td>
</tr>
<tr class="odd">
<td><code id="ec2_create_volume_:_ClientToken">ClientToken</code></td>
<td><p>Unique, case-sensitive identifier that you provide to ensure the
idempotency of the request. For more information, see <a
href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">Ensure
Idempotency</a>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Attachments = list(
        list(
          AttachTime = as.POSIXct(
            "2015-01-01"
          ),
          Device = "string",
          InstanceId = "string",
          State = "attaching"|"attached"|"detaching"|"detached"|"busy",
          VolumeId = "string",
          DeleteOnTermination = TRUE|FALSE
        )
      ),
      AvailabilityZone = "string",
      CreateTime = as.POSIXct(
        "2015-01-01"
      ),
      Encrypted = TRUE|FALSE,
      KmsKeyId = "string",
      OutpostArn = "string",
      Size = 123,
      SnapshotId = "string",
      State = "creating"|"available"|"in-use"|"deleting"|"deleted"|"error",
      VolumeId = "string",
      Iops = 123,
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      ),
      VolumeType = "standard"|"io1"|"io2"|"gp2"|"sc1"|"st1"|"gp3",
      FastRestored = TRUE|FALSE,
      MultiAttachEnabled = TRUE|FALSE,
      Throughput = 123
    )

### Request syntax

    svc$create_volume(
      AvailabilityZone = "string",
      Encrypted = TRUE|FALSE,
      Iops = 123,
      KmsKeyId = "string",
      OutpostArn = "string",
      Size = 123,
      SnapshotId = "string",
      VolumeType = "standard"|"io1"|"io2"|"gp2"|"sc1"|"st1"|"gp3",
      DryRun = TRUE|FALSE,
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
      MultiAttachEnabled = TRUE|FALSE,
      Throughput = 123,
      ClientToken = "string"
    )

### Examples

    ## Not run: 
    # This example creates an 80 GiB General Purpose (SSD) volume in the
    # Availability Zone `us-east-1a`.
    svc$create_volume(
      AvailabilityZone = "us-east-1a",
      Size = 80L,
      VolumeType = "gp2"
    )

    # This example creates a new Provisioned IOPS (SSD) volume with 1000
    # provisioned IOPS from a snapshot in the Availability Zone
    # `us-east-1a`.
    svc$create_volume(
      AvailabilityZone = "us-east-1a",
      Iops = 1000L,
      SnapshotId = "snap-066877671789bd71b",
      VolumeType = "io1"
    )

    ## End(Not run)
