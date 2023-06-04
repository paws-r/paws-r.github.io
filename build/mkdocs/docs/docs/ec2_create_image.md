<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_create_image</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates an Amazon EBS-backed AMI from an Amazon EBS-backed instance that is either running or stopped

### Description

Creates an Amazon EBS-backed AMI from an Amazon EBS-backed instance that
is either running or stopped.

By default, when Amazon EC2 creates the new AMI, it reboots the instance
so that it can take snapshots of the attached volumes while data is at
rest, in order to ensure a consistent state. You can set the `NoReboot`
parameter to `true` in the API request, or use the `--no-reboot` option
in the CLI to prevent Amazon EC2 from shutting down and rebooting the
instance.

If you choose to bypass the shutdown and reboot process by setting the
`NoReboot` parameter to `true` in the API request, or by using the
`--no-reboot` option in the CLI, we can't guarantee the file system
integrity of the created image.

If you customized your instance with instance store volumes or Amazon
EBS volumes in addition to the root device volume, the new AMI contains
block device mapping information for those volumes. When you launch an
instance from this new AMI, the instance automatically launches with
those additional volumes.

For more information, see [Create an Amazon EBS-backed Linux
AMI](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/creating-an-ami-ebs.html)
in the *Amazon Elastic Compute Cloud User Guide*.

### Usage

    ec2_create_image(BlockDeviceMappings, Description, DryRun, InstanceId,
      Name, NoReboot, TagSpecifications)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_create_image_:_BlockDeviceMappings">BlockDeviceMappings</code></td>
<td><p>The block device mappings. This parameter cannot be used to
modify the encryption status of existing volumes or snapshots. To create
an AMI with encrypted snapshots, use the <code>copy_image</code>
action.</p></td>
</tr>
<tr class="even">
<td><code id="ec2_create_image_:_Description">Description</code></td>
<td><p>A description for the new image.</p></td>
</tr>
<tr class="odd">
<td><code id="ec2_create_image_:_DryRun">DryRun</code></td>
<td><p>Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
<tr class="even">
<td><code id="ec2_create_image_:_InstanceId">InstanceId</code></td>
<td><p>[required] The ID of the instance.</p></td>
</tr>
<tr class="odd">
<td><code id="ec2_create_image_:_Name">Name</code></td>
<td><p>[required] A name for the new image.</p>
<p>Constraints: 3-128 alphanumeric characters, parentheses (()), square
brackets ([]), spaces ( ), periods (.), slashes (/), dashes (-), single
quotes ('), at-signs (@), or underscores(_)</p></td>
</tr>
<tr class="even">
<td><code id="ec2_create_image_:_NoReboot">NoReboot</code></td>
<td><p>By default, when Amazon EC2 creates the new AMI, it reboots the
instance so that it can take snapshots of the attached volumes while
data is at rest, in order to ensure a consistent state. You can set the
<code>NoReboot</code> parameter to <code>true</code> in the API request,
or use the <code>--no-reboot</code> option in the CLI to prevent Amazon
EC2 from shutting down and rebooting the instance.</p>
<p>If you choose to bypass the shutdown and reboot process by setting
the <code>NoReboot</code> parameter to <code>true</code> in the API
request, or by using the <code>--no-reboot</code> option in the CLI, we
can't guarantee the file system integrity of the created image.</p>
<p>Default: <code>false</code> (follow standard reboot process)</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_create_image_:_TagSpecifications">TagSpecifications</code></td>
<td><p>The tags to apply to the AMI and snapshots on creation. You can
tag the AMI, the snapshots, or both.</p>
<ul>
<li><p>To tag the AMI, the value for <code>ResourceType</code> must be
<code>image</code>.</p></li>
<li><p>To tag the snapshots that are created of the root volume and of
other Amazon EBS volumes that are attached to the instance, the value
for <code>ResourceType</code> must be <code>snapshot</code>. The same
tag is applied to all of the snapshots that are created.</p></li>
</ul>
<p>If you specify other values for <code>ResourceType</code>, the
request fails.</p>
<p>To tag an AMI or snapshot after it has been created, see
<code>create_tags</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ImageId = "string"
    )

### Request syntax

    svc$create_image(
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
      InstanceId = "string",
      Name = "string",
      NoReboot = TRUE|FALSE,
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

### Examples

    ## Not run: 
    # This example creates an AMI from the specified instance and adds an EBS
    # volume with the device name /dev/sdh and an instance store volume with
    # the device name /dev/sdc.
    svc$create_image(
      BlockDeviceMappings = list(
        list(
          DeviceName = "/dev/sdh",
          Ebs = list(
            VolumeSize = "100"
          )
        ),
        list(
          DeviceName = "/dev/sdc",
          VirtualName = "ephemeral1"
        )
      ),
      Description = "An AMI for my server",
      InstanceId = "i-1234567890abcdef0",
      Name = "My server",
      NoReboot = TRUE
    )

    ## End(Not run)
