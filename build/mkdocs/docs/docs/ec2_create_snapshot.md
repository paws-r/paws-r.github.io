<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_create_snapshot</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a snapshot of an EBS volume and stores it in Amazon S3

### Description

Creates a snapshot of an EBS volume and stores it in Amazon S3. You can
use snapshots for backups, to make copies of EBS volumes, and to save
data before shutting down an instance.

You can create snapshots of volumes in a Region and volumes on an
Outpost. If you create a snapshot of a volume in a Region, the snapshot
must be stored in the same Region as the volume. If you create a
snapshot of a volume on an Outpost, the snapshot can be stored on the
same Outpost as the volume, or in the Region for that Outpost.

When a snapshot is created, any Amazon Web Services Marketplace product
codes that are associated with the source volume are propagated to the
snapshot.

You can take a snapshot of an attached volume that is in use. However,
snapshots only capture data that has been written to your Amazon EBS
volume at the time the snapshot command is issued; this might exclude
any data that has been cached by any applications or the operating
system. If you can pause any file systems on the volume long enough to
take a snapshot, your snapshot should be complete. However, if you
cannot pause all file writes to the volume, you should unmount the
volume from within the instance, issue the snapshot command, and then
remount the volume to ensure a consistent and complete snapshot. You may
remount and use your volume while the snapshot status is `pending`.

When you create a snapshot for an EBS volume that serves as a root
device, we recommend that you stop the instance before taking the
snapshot.

Snapshots that are taken from encrypted volumes are automatically
encrypted. Volumes that are created from encrypted snapshots are also
automatically encrypted. Your encrypted volumes and any associated
snapshots always remain protected.

You can tag your snapshots during creation. For more information, see
[Tag your Amazon EC2
resources](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Using_Tags.html)
in the *Amazon Elastic Compute Cloud User Guide*.

For more information, see [Amazon Elastic Block
Store](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/AmazonEBS.html)
and [Amazon EBS
encryption](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSEncryption.html)
in the *Amazon Elastic Compute Cloud User Guide*.

### Usage

    ec2_create_snapshot(Description, OutpostArn, VolumeId,
      TagSpecifications, DryRun)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ec2_create_snapshot_:_Description">Description</code></td>
<td><p>A description for the snapshot.</p></td>
</tr>
<tr class="even">
<td><code id="ec2_create_snapshot_:_OutpostArn">OutpostArn</code></td>
<td><p>The Amazon Resource Name (ARN) of the Outpost on which to create
a local snapshot.</p>
<ul>
<li><p>To create a snapshot of a volume in a Region, omit this
parameter. The snapshot is created in the same Region as the
volume.</p></li>
<li><p>To create a snapshot of a volume on an Outpost and store the
snapshot in the Region, omit this parameter. The snapshot is created in
the Region for the Outpost.</p></li>
<li><p>To create a snapshot of a volume on an Outpost and store the
snapshot on an Outpost, specify the ARN of the destination Outpost. The
snapshot must be created on the same Outpost as the volume.</p></li>
</ul>
<p>For more information, see <a
href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/snapshots-outposts.html#create-snapshot">Create
local snapshots from volumes on an Outpost</a> in the <em>Amazon Elastic
Compute Cloud User Guide</em>.</p></td>
</tr>
<tr class="odd">
<td><code id="ec2_create_snapshot_:_VolumeId">VolumeId</code></td>
<td><p>[required] The ID of the Amazon EBS volume.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_create_snapshot_:_TagSpecifications">TagSpecifications</code></td>
<td><p>The tags to apply to the snapshot during creation.</p></td>
</tr>
<tr class="odd">
<td><code id="ec2_create_snapshot_:_DryRun">DryRun</code></td>
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
      DataEncryptionKeyId = "string",
      Description = "string",
      Encrypted = TRUE|FALSE,
      KmsKeyId = "string",
      OwnerId = "string",
      Progress = "string",
      SnapshotId = "string",
      StartTime = as.POSIXct(
        "2015-01-01"
      ),
      State = "pending"|"completed"|"error"|"recoverable"|"recovering",
      StateMessage = "string",
      VolumeId = "string",
      VolumeSize = 123,
      OwnerAlias = "string",
      OutpostArn = "string",
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      ),
      StorageTier = "archive"|"standard",
      RestoreExpiryTime = as.POSIXct(
        "2015-01-01"
      )
    )

### Request syntax

    svc$create_snapshot(
      Description = "string",
      OutpostArn = "string",
      VolumeId = "string",
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
      DryRun = TRUE|FALSE
    )

### Examples

    ## Not run: 
    # This example creates a snapshot of the volume with a volume ID of
    # `vol-1234567890abcdef0` and a short description to identify the
    # snapshot.
    svc$create_snapshot(
      Description = "This is my root volume snapshot.",
      VolumeId = "vol-1234567890abcdef0"
    )

    ## End(Not run)
