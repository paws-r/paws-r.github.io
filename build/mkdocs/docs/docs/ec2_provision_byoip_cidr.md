<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_provision_byoip_cidr</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Provisions an IPv4 or IPv6 address range for use with your Amazon Web Services resources through bring your own IP addresses (BYOIP) and creates a corresponding address pool

### Description

Provisions an IPv4 or IPv6 address range for use with your Amazon Web
Services resources through bring your own IP addresses (BYOIP) and
creates a corresponding address pool. After the address range is
provisioned, it is ready to be advertised using `advertise_byoip_cidr`.

Amazon Web Services verifies that you own the address range and are
authorized to advertise it. You must ensure that the address range is
registered to you and that you created an RPKI ROA to authorize Amazon
ASNs 16509 and 14618 to advertise the address range. For more
information, see [Bring your own IP addresses
(BYOIP)](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-byoip.html)
in the *Amazon Elastic Compute Cloud User Guide*.

Provisioning an address range is an asynchronous operation, so the call
returns immediately, but the address range is not ready to use until its
status changes from `pending-provision` to `provisioned`. To monitor the
status of an address range, use `describe_byoip_cidrs`. To allocate an
Elastic IP address from your IPv4 address pool, use `allocate_address`
with either the specific address from the address pool or the ID of the
address pool.

### Usage

    ec2_provision_byoip_cidr(Cidr, CidrAuthorizationContext,
      PubliclyAdvertisable, Description, DryRun, PoolTagSpecifications,
      MultiRegion)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ec2_provision_byoip_cidr_:_Cidr">Cidr</code></td>
<td><p>[required] The public IPv4 or IPv6 address range, in CIDR
notation. The most specific IPv4 prefix that you can specify is /24. The
most specific IPv6 prefix you can specify is /56. The address range
cannot overlap with another address range that you've brought to this or
another Region.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_provision_byoip_cidr_:_CidrAuthorizationContext">CidrAuthorizationContext</code></td>
<td><p>A signed document that proves that you are authorized to bring
the specified IP address range to Amazon using BYOIP.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_provision_byoip_cidr_:_PubliclyAdvertisable">PubliclyAdvertisable</code></td>
<td><p>(IPv6 only) Indicate whether the address range will be publicly
advertised to the internet.</p>
<p>Default: true</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_provision_byoip_cidr_:_Description">Description</code></td>
<td><p>A description for the address range and the address
pool.</p></td>
</tr>
<tr class="odd">
<td><code id="ec2_provision_byoip_cidr_:_DryRun">DryRun</code></td>
<td><p>Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_provision_byoip_cidr_:_PoolTagSpecifications">PoolTagSpecifications</code></td>
<td><p>The tags to apply to the address pool.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_provision_byoip_cidr_:_MultiRegion">MultiRegion</code></td>
<td><p>Reserved.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ByoipCidr = list(
        Cidr = "string",
        Description = "string",
        StatusMessage = "string",
        State = "advertised"|"deprovisioned"|"failed-deprovision"|"failed-provision"|"pending-deprovision"|"pending-provision"|"provisioned"|"provisioned-not-publicly-advertisable"
      )
    )

### Request syntax

    svc$provision_byoip_cidr(
      Cidr = "string",
      CidrAuthorizationContext = list(
        Message = "string",
        Signature = "string"
      ),
      PubliclyAdvertisable = TRUE|FALSE,
      Description = "string",
      DryRun = TRUE|FALSE,
      PoolTagSpecifications = list(
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
      MultiRegion = TRUE|FALSE
    )
