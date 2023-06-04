<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_create_vpc_endpoint_service_configuration</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a VPC endpoint service to which service consumers (Amazon Web Services accounts, users, and IAM roles) can connect

### Description

Creates a VPC endpoint service to which service consumers (Amazon Web
Services accounts, users, and IAM roles) can connect.

Before you create an endpoint service, you must create one of the
following for your service:

-   A [Network Load
    Balancer](https://docs.aws.amazon.com/elasticloadbalancing/latest/network/).
    Service consumers connect to your service using an interface
    endpoint.

-   A [Gateway Load
    Balancer](https://docs.aws.amazon.com/elasticloadbalancing/latest/gateway/).
    Service consumers connect to your service using a Gateway Load
    Balancer endpoint.

If you set the private DNS name, you must prove that you own the private
DNS domain name.

For more information, see the [Amazon Web Services PrivateLink
Guide](https://docs.aws.amazon.com/vpc/latest/privatelink/).

### Usage

    ec2_create_vpc_endpoint_service_configuration(DryRun,
      AcceptanceRequired, PrivateDnsName, NetworkLoadBalancerArns,
      GatewayLoadBalancerArns, SupportedIpAddressTypes, ClientToken,
      TagSpecifications)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_create_vpc_endpoint_service_configuration_:_DryRun">DryRun</code></td>
<td><p>Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_create_vpc_endpoint_service_configuration_:_AcceptanceRequired">AcceptanceRequired</code></td>
<td><p>Indicates whether requests from service consumers to create an
endpoint to your service must be accepted manually.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_create_vpc_endpoint_service_configuration_:_PrivateDnsName">PrivateDnsName</code></td>
<td><p>(Interface endpoint configuration) The private DNS name to assign
to the VPC endpoint service.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_create_vpc_endpoint_service_configuration_:_NetworkLoadBalancerArns">NetworkLoadBalancerArns</code></td>
<td><p>The Amazon Resource Names (ARNs) of the Network Load
Balancers.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_create_vpc_endpoint_service_configuration_:_GatewayLoadBalancerArns">GatewayLoadBalancerArns</code></td>
<td><p>The Amazon Resource Names (ARNs) of the Gateway Load
Balancers.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_create_vpc_endpoint_service_configuration_:_SupportedIpAddressTypes">SupportedIpAddressTypes</code></td>
<td><p>The supported IP address types. The possible values are
<code>ipv4</code> and <code>ipv6</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_create_vpc_endpoint_service_configuration_:_ClientToken">ClientToken</code></td>
<td><p>Unique, case-sensitive identifier that you provide to ensure the
idempotency of the request. For more information, see <a
href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">How
to ensure idempotency</a>.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_create_vpc_endpoint_service_configuration_:_TagSpecifications">TagSpecifications</code></td>
<td><p>The tags to associate with the service.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ServiceConfiguration = list(
        ServiceType = list(
          list(
            ServiceType = "Interface"|"Gateway"|"GatewayLoadBalancer"
          )
        ),
        ServiceId = "string",
        ServiceName = "string",
        ServiceState = "Pending"|"Available"|"Deleting"|"Deleted"|"Failed",
        AvailabilityZones = list(
          "string"
        ),
        AcceptanceRequired = TRUE|FALSE,
        ManagesVpcEndpoints = TRUE|FALSE,
        NetworkLoadBalancerArns = list(
          "string"
        ),
        GatewayLoadBalancerArns = list(
          "string"
        ),
        SupportedIpAddressTypes = list(
          "ipv4"|"ipv6"
        ),
        BaseEndpointDnsNames = list(
          "string"
        ),
        PrivateDnsName = "string",
        PrivateDnsNameConfiguration = list(
          State = "pendingVerification"|"verified"|"failed",
          Type = "string",
          Value = "string",
          Name = "string"
        ),
        PayerResponsibility = "ServiceOwner",
        Tags = list(
          list(
            Key = "string",
            Value = "string"
          )
        )
      ),
      ClientToken = "string"
    )

### Request syntax

    svc$create_vpc_endpoint_service_configuration(
      DryRun = TRUE|FALSE,
      AcceptanceRequired = TRUE|FALSE,
      PrivateDnsName = "string",
      NetworkLoadBalancerArns = list(
        "string"
      ),
      GatewayLoadBalancerArns = list(
        "string"
      ),
      SupportedIpAddressTypes = list(
        "string"
      ),
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
