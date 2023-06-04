<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_create_snapshots</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates crash-consistent snapshots of multiple EBS volumes and stores the data in S3

### Description

Creates crash-consistent snapshots of multiple EBS volumes and stores
the data in S3. Volumes are chosen by specifying an instance. Any
attached volumes will produce one snapshot each that is crash-consistent
across the instance.

You can include all of the volumes currently attached to the instance,
or you can exclude the root volume or specific data (non-root) volumes
from the multi-volume snapshot set.

You can create multi-volume snapshots of instances in a Region and
instances on an Outpost. If you create snapshots from an instance in a
Region, the snapshots must be stored in the same Region as the instance.
If you create snapshots from an instance on an Outpost, the snapshots
can be stored on the same Outpost as the instance, or in the Region for
that Outpost.

### Usage

    ec2_create_snapshots(Description, InstanceSpecification, OutpostArn,
      TagSpecifications, DryRun, CopyTagsFromSource)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_create_snapshots_:_Description">Description</code></td>
<td><p>A description propagated to every snapshot specified by the
instance.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_create_snapshots_:_InstanceSpecification">InstanceSpecification</code></td>
<td><p>[required] The instance to specify which volumes should be
included in the snapshots.</p></td>
</tr>
<tr class="odd">
<td><code id="ec2_create_snapshots_:_OutpostArn">OutpostArn</code></td>
<td><p>The Amazon Resource Name (ARN) of the Outpost on which to create
the local snapshots.</p>
<ul>
<li><p>To create snapshots from an instance in a Region, omit this
parameter. The snapshots are created in the same Region as the
instance.</p></li>
<li><p>To create snapshots from an instance on an Outpost and store the
snapshots in the Region, omit this parameter. The snapshots are created
in the Region for the Outpost.</p></li>
<li><p>To create snapshots from an instance on an Outpost and store the
snapshots on an Outpost, specify the ARN of the destination Outpost. The
snapshots must be created on the same Outpost as the instance.</p></li>
</ul>
<p>For more information, see <a
href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/snapshots-outposts.html#create-multivol-snapshot">Create
multi-volume local snapshots from instances on an Outpost</a> in the
<em>Amazon Elastic Compute Cloud User Guide</em>.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_create_snapshots_:_TagSpecifications">TagSpecifications</code></td>
<td><p>Tags to apply to every snapshot specified by the
instance.</p></td>
</tr>
<tr class="odd">
<td><code id="ec2_create_snapshots_:_DryRun">DryRun</code></td>
<td><p>Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_create_snapshots_:_CopyTagsFromSource">CopyTagsFromSource</code></td>
<td><p>Copies the tags from the specified volume to corresponding
snapshot.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Snapshots = list(
        list(
          Description = "string",
          Tags = list(
            list(
              Key = "string",
              Value = "string"
            )
          ),
          Encrypted = TRUE|FALSE,
          VolumeId = "string",
          State = "pending"|"completed"|"error"|"recoverable"|"recovering",
          VolumeSize = 123,
          StartTime = as.POSIXct(
            "2015-01-01"
          ),
          Progress = "string",
          OwnerId = "string",
          SnapshotId = "string",
          OutpostArn = "string"
        )
      )
    )

### Request syntax

    svc$create_snapshots(
      Description = "string",
      InstanceSpecification = list(
        InstanceId = "string",
        ExcludeBootVolume = TRUE|FALSE,
        ExcludeDataVolumeIds = list(
          "string"
        )
      ),
      OutpostArn = "string",
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
      DryRun = TRUE|FALSE,
      CopyTagsFromSource = "volume"
    )
