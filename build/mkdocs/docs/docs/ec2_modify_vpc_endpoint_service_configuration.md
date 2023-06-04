<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_modify_vpc_endpoint_service_configuration</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Modifies the attributes of your VPC endpoint service configuration

### Description

Modifies the attributes of your VPC endpoint service configuration. You
can change the Network Load Balancers or Gateway Load Balancers for your
service, and you can specify whether acceptance is required for requests
to connect to your endpoint service through an interface VPC endpoint.

If you set or modify the private DNS name, you must prove that you own
the private DNS domain name.

### Usage

    ec2_modify_vpc_endpoint_service_configuration(DryRun, ServiceId,
      PrivateDnsName, RemovePrivateDnsName, AcceptanceRequired,
      AddNetworkLoadBalancerArns, RemoveNetworkLoadBalancerArns,
      AddGatewayLoadBalancerArns, RemoveGatewayLoadBalancerArns,
      AddSupportedIpAddressTypes, RemoveSupportedIpAddressTypes)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_modify_vpc_endpoint_service_configuration_:_DryRun">DryRun</code></td>
<td><p>Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_modify_vpc_endpoint_service_configuration_:_ServiceId">ServiceId</code></td>
<td><p>[required] The ID of the service.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_modify_vpc_endpoint_service_configuration_:_PrivateDnsName">PrivateDnsName</code></td>
<td><p>(Interface endpoint configuration) The private DNS name to assign
to the endpoint service.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_modify_vpc_endpoint_service_configuration_:_RemovePrivateDnsName">RemovePrivateDnsName</code></td>
<td><p>(Interface endpoint configuration) Removes the private DNS name
of the endpoint service.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_modify_vpc_endpoint_service_configuration_:_AcceptanceRequired">AcceptanceRequired</code></td>
<td><p>Indicates whether requests to create an endpoint to your service
must be accepted.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_modify_vpc_endpoint_service_configuration_:_AddNetworkLoadBalancerArns">AddNetworkLoadBalancerArns</code></td>
<td><p>The Amazon Resource Names (ARNs) of Network Load Balancers to add
to your service configuration.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_modify_vpc_endpoint_service_configuration_:_RemoveNetworkLoadBalancerArns">RemoveNetworkLoadBalancerArns</code></td>
<td><p>The Amazon Resource Names (ARNs) of Network Load Balancers to
remove from your service configuration.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_modify_vpc_endpoint_service_configuration_:_AddGatewayLoadBalancerArns">AddGatewayLoadBalancerArns</code></td>
<td><p>The Amazon Resource Names (ARNs) of Gateway Load Balancers to add
to your service configuration.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_modify_vpc_endpoint_service_configuration_:_RemoveGatewayLoadBalancerArns">RemoveGatewayLoadBalancerArns</code></td>
<td><p>The Amazon Resource Names (ARNs) of Gateway Load Balancers to
remove from your service configuration.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_modify_vpc_endpoint_service_configuration_:_AddSupportedIpAddressTypes">AddSupportedIpAddressTypes</code></td>
<td><p>The IP address types to add to your service
configuration.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_modify_vpc_endpoint_service_configuration_:_RemoveSupportedIpAddressTypes">RemoveSupportedIpAddressTypes</code></td>
<td><p>The IP address types to remove from your service
configuration.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Return = TRUE|FALSE
    )

### Request syntax

    svc$modify_vpc_endpoint_service_configuration(
      DryRun = TRUE|FALSE,
      ServiceId = "string",
      PrivateDnsName = "string",
      RemovePrivateDnsName = TRUE|FALSE,
      AcceptanceRequired = TRUE|FALSE,
      AddNetworkLoadBalancerArns = list(
        "string"
      ),
      RemoveNetworkLoadBalancerArns = list(
        "string"
      ),
      AddGatewayLoadBalancerArns = list(
        "string"
      ),
      RemoveGatewayLoadBalancerArns = list(
        "string"
      ),
      AddSupportedIpAddressTypes = list(
        "string"
      ),
      RemoveSupportedIpAddressTypes = list(
        "string"
      )
    )
