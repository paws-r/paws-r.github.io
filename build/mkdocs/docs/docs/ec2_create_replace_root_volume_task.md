<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_create_replace_root_volume_task</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Replaces the EBS-backed root volume for a running instance with a new volume that is restored to the original root volume's launch state, that is restored to a specific snapshot taken from the original root volume, or that is restored from an AMI that has the same key characteristics as that of the instance

### Description

Replaces the EBS-backed root volume for a `running` instance with a new
volume that is restored to the original root volume's launch state, that
is restored to a specific snapshot taken from the original root volume,
or that is restored from an AMI that has the same key characteristics as
that of the instance.

For more information, see [Replace a root
volume](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/replace-root.html)
in the *Amazon Elastic Compute Cloud User Guide*.

### Usage

    ec2_create_replace_root_volume_task(InstanceId, SnapshotId, ClientToken,
      DryRun, TagSpecifications, ImageId, DeleteReplacedRootVolume)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_create_replace_root_volume_task_:_InstanceId">InstanceId</code></td>
<td><p>[required] The ID of the instance for which to replace the root
volume.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_create_replace_root_volume_task_:_SnapshotId">SnapshotId</code></td>
<td><p>The ID of the snapshot from which to restore the replacement root
volume. The specified snapshot must be a snapshot that you previously
created from the original root volume.</p>
<p>If you want to restore the replacement root volume to the initial
launch state, or if you want to restore the replacement root volume from
an AMI, omit this parameter.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_create_replace_root_volume_task_:_ClientToken">ClientToken</code></td>
<td><p>Unique, case-sensitive identifier you provide to ensure the
idempotency of the request. If you do not specify a client token, a
randomly generated token is used for the request to ensure idempotency.
For more information, see <a
href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">Ensuring
idempotency</a>.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_create_replace_root_volume_task_:_DryRun">DryRun</code></td>
<td><p>Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_create_replace_root_volume_task_:_TagSpecifications">TagSpecifications</code></td>
<td><p>The tags to apply to the root volume replacement task.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_create_replace_root_volume_task_:_ImageId">ImageId</code></td>
<td><p>The ID of the AMI to use to restore the root volume. The
specified AMI must have the same product code, billing information,
architecture type, and virtualization type as that of the instance.</p>
<p>If you want to restore the replacement volume from a specific
snapshot, or if you want to restore it to its launch state, omit this
parameter.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_create_replace_root_volume_task_:_DeleteReplacedRootVolume">DeleteReplacedRootVolume</code></td>
<td><p>Indicates whether to automatically delete the original root
volume after the root volume replacement task completes. To delete the
original root volume, specify <code>true</code>. If you choose to keep
the original root volume after the replacement task completes, you must
manually delete it when you no longer need it.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ReplaceRootVolumeTask = list(
        ReplaceRootVolumeTaskId = "string",
        InstanceId = "string",
        TaskState = "pending"|"in-progress"|"failing"|"succeeded"|"failed"|"failed-detached",
        StartTime = "string",
        CompleteTime = "string",
        Tags = list(
          list(
            Key = "string",
            Value = "string"
          )
        ),
        ImageId = "string",
        SnapshotId = "string",
        DeleteReplacedRootVolume = TRUE|FALSE
      )
    )

### Request syntax

    svc$create_replace_root_volume_task(
      InstanceId = "string",
      SnapshotId = "string",
      ClientToken = "string",
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
      ImageId = "string",
      DeleteReplacedRootVolume = TRUE|FALSE
    )
