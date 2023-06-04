<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_create_fpga_image</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates an Amazon FPGA Image (AFI) from the specified design checkpoint (DCP)

### Description

Creates an Amazon FPGA Image (AFI) from the specified design checkpoint
(DCP).

The create operation is asynchronous. To verify that the AFI is ready
for use, check the output logs.

An AFI contains the FPGA bitstream that is ready to download to an FPGA.
You can securely deploy an AFI on multiple FPGA-accelerated instances.
For more information, see the [Amazon Web Services FPGA Hardware
Development Kit](https://github.com/aws/aws-fpga/).

### Usage

    ec2_create_fpga_image(DryRun, InputStorageLocation, LogsStorageLocation,
      Description, Name, ClientToken, TagSpecifications)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ec2_create_fpga_image_:_DryRun">DryRun</code></td>
<td><p>Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_create_fpga_image_:_InputStorageLocation">InputStorageLocation</code></td>
<td><p>[required] The location of the encrypted design checkpoint in
Amazon S3. The input must be a tarball.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_create_fpga_image_:_LogsStorageLocation">LogsStorageLocation</code></td>
<td><p>The location in Amazon S3 for the output logs.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_create_fpga_image_:_Description">Description</code></td>
<td><p>A description for the AFI.</p></td>
</tr>
<tr class="odd">
<td><code id="ec2_create_fpga_image_:_Name">Name</code></td>
<td><p>A name for the AFI.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_create_fpga_image_:_ClientToken">ClientToken</code></td>
<td><p>Unique, case-sensitive identifier that you provide to ensure the
idempotency of the request. For more information, see <a
href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">Ensuring
Idempotency</a>.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_create_fpga_image_:_TagSpecifications">TagSpecifications</code></td>
<td><p>The tags to apply to the FPGA image during creation.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      FpgaImageId = "string",
      FpgaImageGlobalId = "string"
    )

### Request syntax

    svc$create_fpga_image(
      DryRun = TRUE|FALSE,
      InputStorageLocation = list(
        Bucket = "string",
        Key = "string"
      ),
      LogsStorageLocation = list(
        Bucket = "string",
        Key = "string"
      ),
      Description = "string",
      Name = "string",
      ClientToken = "string",
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
