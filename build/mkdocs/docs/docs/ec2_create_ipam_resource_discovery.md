<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_create_ipam_resource_discovery</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates an IPAM resource discovery

### Description

Creates an IPAM resource discovery. A resource discovery is an IPAM
component that enables IPAM to manage and monitor resources that belong
to the owning account.

### Usage

    ec2_create_ipam_resource_discovery(DryRun, Description,
      OperatingRegions, TagSpecifications, ClientToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_create_ipam_resource_discovery_:_DryRun">DryRun</code></td>
<td><p>A check for whether you have the required permissions for the
action without actually making the request and provides an error
response. If you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_create_ipam_resource_discovery_:_Description">Description</code></td>
<td><p>A description for the IPAM resource discovery.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_create_ipam_resource_discovery_:_OperatingRegions">OperatingRegions</code></td>
<td><p>Operating Regions for the IPAM resource discovery. Operating
Regions are Amazon Web Services Regions where the IPAM is allowed to
manage IP address CIDRs. IPAM only discovers and monitors resources in
the Amazon Web Services Regions you select as operating
Regions.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_create_ipam_resource_discovery_:_TagSpecifications">TagSpecifications</code></td>
<td><p>Tag specifications for the IPAM resource discovery.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_create_ipam_resource_discovery_:_ClientToken">ClientToken</code></td>
<td><p>A client token for the IPAM resource discovery.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      IpamResourceDiscovery = list(
        OwnerId = "string",
        IpamResourceDiscoveryId = "string",
        IpamResourceDiscoveryArn = "string",
        IpamResourceDiscoveryRegion = "string",
        Description = "string",
        OperatingRegions = list(
          list(
            RegionName = "string"
          )
        ),
        IsDefault = TRUE|FALSE,
        State = "create-in-progress"|"create-complete"|"create-failed"|"modify-in-progress"|"modify-complete"|"modify-failed"|"delete-in-progress"|"delete-complete"|"delete-failed"|"isolate-in-progress"|"isolate-complete"|"restore-in-progress",
        Tags = list(
          list(
            Key = "string",
            Value = "string"
          )
        )
      )
    )

### Request syntax

    svc$create_ipam_resource_discovery(
      DryRun = TRUE|FALSE,
      Description = "string",
      OperatingRegions = list(
        list(
          RegionName = "string"
        )
      ),
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
      ClientToken = "string"
    )
