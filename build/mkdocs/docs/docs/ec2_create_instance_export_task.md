<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_create_instance_export_task</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Exports a running or stopped instance to an Amazon S3 bucket

### Description

Exports a running or stopped instance to an Amazon S3 bucket.

For information about the supported operating systems, image formats,
and known limitations for the types of instances you can export, see
[Exporting an instance as a VM Using VM
Import/Export](https://docs.aws.amazon.com/vm-import/latest/userguide/vmexport.html)
in the *VM Import/Export User Guide*.

### Usage

    ec2_create_instance_export_task(Description, ExportToS3Task, InstanceId,
      TargetEnvironment, TagSpecifications)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_create_instance_export_task_:_Description">Description</code></td>
<td><p>A description for the conversion task or the resource being
exported. The maximum length is 255 characters.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_create_instance_export_task_:_ExportToS3Task">ExportToS3Task</code></td>
<td><p>[required] The format and location for an export instance
task.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_create_instance_export_task_:_InstanceId">InstanceId</code></td>
<td><p>[required] The ID of the instance.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_create_instance_export_task_:_TargetEnvironment">TargetEnvironment</code></td>
<td><p>[required] The target virtualization environment.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_create_instance_export_task_:_TagSpecifications">TagSpecifications</code></td>
<td><p>The tags to apply to the export instance task during
creation.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ExportTask = list(
        Description = "string",
        ExportTaskId = "string",
        ExportToS3Task = list(
          ContainerFormat = "ova",
          DiskImageFormat = "VMDK"|"RAW"|"VHD",
          S3Bucket = "string",
          S3Key = "string"
        ),
        InstanceExportDetails = list(
          InstanceId = "string",
          TargetEnvironment = "citrix"|"vmware"|"microsoft"
        ),
        State = "active"|"cancelling"|"cancelled"|"completed",
        StatusMessage = "string",
        Tags = list(
          list(
            Key = "string",
            Value = "string"
          )
        )
      )
    )

### Request syntax

    svc$create_instance_export_task(
      Description = "string",
      ExportToS3Task = list(
        ContainerFormat = "ova",
        DiskImageFormat = "VMDK"|"RAW"|"VHD",
        S3Bucket = "string",
        S3Prefix = "string"
      ),
      InstanceId = "string",
      TargetEnvironment = "citrix"|"vmware"|"microsoft",
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
