<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_create_customer_gateway</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Provides information to Amazon Web Services about your customer gateway device

### Description

Provides information to Amazon Web Services about your customer gateway
device. The customer gateway device is the appliance at your end of the
VPN connection. You must provide the IP address of the customer gateway
device’s external interface. The IP address must be static and can be
behind a device performing network address translation (NAT).

For devices that use Border Gateway Protocol (BGP), you can also provide
the device's BGP Autonomous System Number (ASN). You can use an existing
ASN assigned to your network. If you don't have an ASN already, you can
use a private ASN. For more information, see [Customer gateway options
for your Site-to-Site VPN
connection](https://docs.aws.amazon.com/vpn/latest/s2svpn/cgw-options.html)
in the *Amazon Web Services Site-to-Site VPN User Guide*.

To create more than one customer gateway with the same VPN type, IP
address, and BGP ASN, specify a unique device name for each customer
gateway. An identical request returns information about the existing
customer gateway; it doesn't create a new customer gateway.

### Usage

    ec2_create_customer_gateway(BgpAsn, PublicIp, CertificateArn, Type,
      TagSpecifications, DeviceName, IpAddress, DryRun)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ec2_create_customer_gateway_:_BgpAsn">BgpAsn</code></td>
<td><p>For devices that support BGP, the customer gateway's BGP ASN.</p>
<p>Default: 65000</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_create_customer_gateway_:_PublicIp">PublicIp</code></td>
<td><p><em>This member has been deprecated.</em> The Internet-routable
IP address for the customer gateway's outside interface. The address
must be static.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_create_customer_gateway_:_CertificateArn">CertificateArn</code></td>
<td><p>The Amazon Resource Name (ARN) for the customer gateway
certificate.</p></td>
</tr>
<tr class="even">
<td><code id="ec2_create_customer_gateway_:_Type">Type</code></td>
<td><p>[required] The type of VPN connection that this customer gateway
supports (<code>ipsec.1</code>).</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_create_customer_gateway_:_TagSpecifications">TagSpecifications</code></td>
<td><p>The tags to apply to the customer gateway.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_create_customer_gateway_:_DeviceName">DeviceName</code></td>
<td><p>A name for the customer gateway device.</p>
<p>Length Constraints: Up to 255 characters.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_create_customer_gateway_:_IpAddress">IpAddress</code></td>
<td><p>IPv4 address for the customer gateway device's outside interface.
The address must be static.</p></td>
</tr>
<tr class="even">
<td><code id="ec2_create_customer_gateway_:_DryRun">DryRun</code></td>
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
      CustomerGateway = list(
        BgpAsn = "string",
        CustomerGatewayId = "string",
        IpAddress = "string",
        CertificateArn = "string",
        State = "string",
        Type = "string",
        DeviceName = "string",
        Tags = list(
          list(
            Key = "string",
            Value = "string"
          )
        )
      )
    )

### Request syntax

    svc$create_customer_gateway(
      BgpAsn = 123,
      PublicIp = "string",
      CertificateArn = "string",
      Type = "ipsec.1",
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
      DeviceName = "string",
      IpAddress = "string",
      DryRun = TRUE|FALSE
    )

### Examples

    ## Not run: 
    # This example creates a customer gateway with the specified IP address
    # for its outside interface.
    svc$create_customer_gateway(
      BgpAsn = 65534L,
      PublicIp = "12.1.2.3",
      Type = "ipsec.1"
    )

    ## End(Not run)
