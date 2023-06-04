<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_create_restore_image_task</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Starts a task that restores an AMI from an Amazon S3 object that was previously created by using CreateStoreImageTask

### Description

Starts a task that restores an AMI from an Amazon S3 object that was
previously created by using `create_store_image_task`.

To use this API, you must have the required permissions. For more
information, see [Permissions for storing and restoring AMIs using
Amazon
S3](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ami-store-restore.html#ami-s3-permissions)
in the *Amazon EC2 User Guide*.

For more information, see [Store and restore an AMI using Amazon
S3](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ami-store-restore.html)
in the *Amazon EC2 User Guide*.

### Usage

    ec2_create_restore_image_task(Bucket, ObjectKey, Name,
      TagSpecifications, DryRun)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ec2_create_restore_image_task_:_Bucket">Bucket</code></td>
<td><p>[required] The name of the Amazon S3 bucket that contains the
stored AMI object.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_create_restore_image_task_:_ObjectKey">ObjectKey</code></td>
<td><p>[required] The name of the stored AMI object in the
bucket.</p></td>
</tr>
<tr class="odd">
<td><code id="ec2_create_restore_image_task_:_Name">Name</code></td>
<td><p>The name for the restored AMI. The name must be unique for AMIs
in the Region for this account. If you do not provide a name, the new
AMI gets the same name as the original AMI.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_create_restore_image_task_:_TagSpecifications">TagSpecifications</code></td>
<td><p>The tags to apply to the AMI and snapshots on restoration. You
can tag the AMI, the snapshots, or both.</p>
<ul>
<li><p>To tag the AMI, the value for <code>ResourceType</code> must be
<code>image</code>.</p></li>
<li><p>To tag the snapshots, the value for <code>ResourceType</code>
must be <code>snapshot</code>. The same tag is applied to all of the
snapshots that are created.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code id="ec2_create_restore_image_task_:_DryRun">DryRun</code></td>
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
      ImageId = "string"
    )

### Request syntax

    svc$create_restore_image_task(
      Bucket = "string",
      ObjectKey = "string",
      Name = "string",
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
