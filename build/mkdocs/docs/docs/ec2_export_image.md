<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_export_image</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Exports an Amazon Machine Image (AMI) to a VM file

### Description

Exports an Amazon Machine Image (AMI) to a VM file. For more
information, see [Exporting a VM directly from an Amazon Machine Image
(AMI)](https://docs.aws.amazon.com/vm-import/latest/userguide/vmexport_image.html)
in the *VM Import/Export User Guide*.

### Usage

    ec2_export_image(ClientToken, Description, DiskImageFormat, DryRun,
      ImageId, S3ExportLocation, RoleName, TagSpecifications)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ec2_export_image_:_ClientToken">ClientToken</code></td>
<td><p>Token to enable idempotency for export image requests.</p></td>
</tr>
<tr class="even">
<td><code id="ec2_export_image_:_Description">Description</code></td>
<td><p>A description of the image being exported. The maximum length is
255 characters.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_export_image_:_DiskImageFormat">DiskImageFormat</code></td>
<td><p>[required] The disk image format.</p></td>
</tr>
<tr class="even">
<td><code id="ec2_export_image_:_DryRun">DryRun</code></td>
<td><p>Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
<tr class="odd">
<td><code id="ec2_export_image_:_ImageId">ImageId</code></td>
<td><p>[required] The ID of the image.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_export_image_:_S3ExportLocation">S3ExportLocation</code></td>
<td><p>[required] The Amazon S3 bucket for the destination image. The
destination bucket must exist.</p></td>
</tr>
<tr class="odd">
<td><code id="ec2_export_image_:_RoleName">RoleName</code></td>
<td><p>The name of the role that grants VM Import/Export permission to
export images to your Amazon S3 bucket. If this parameter is not
specified, the default role is named 'vmimport'.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_export_image_:_TagSpecifications">TagSpecifications</code></td>
<td><p>The tags to apply to the export image task during
creation.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Description = "string",
      DiskImageFormat = "VMDK"|"RAW"|"VHD",
      ExportImageTaskId = "string",
      ImageId = "string",
      RoleName = "string",
      Progress = "string",
      S3ExportLocation = list(
        S3Bucket = "string",
        S3Prefix = "string"
      ),
      Status = "string",
      StatusMessage = "string",
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )

### Request syntax

    svc$export_image(
      ClientToken = "string",
      Description = "string",
      DiskImageFormat = "VMDK"|"RAW"|"VHD",
      DryRun = TRUE|FALSE,
      ImageId = "string",
      S3ExportLocation = list(
        S3Bucket = "string",
        S3Prefix = "string"
      ),
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
