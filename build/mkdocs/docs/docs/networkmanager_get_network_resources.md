<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>networkmanager_get_network_resources</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes the network resources for the specified global network

### Description

Describes the network resources for the specified global network.

The results include information from the corresponding Describe call for
the resource, minus any sensitive information such as pre-shared keys.

### Usage

    networkmanager_get_network_resources(GlobalNetworkId, CoreNetworkId,
      RegisteredGatewayArn, AwsRegion, AccountId, ResourceType, ResourceArn,
      MaxResults, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="networkmanager_get_network_resources_:_GlobalNetworkId">GlobalNetworkId</code></td>
<td><p>[required] The ID of the global network.</p></td>
</tr>
<tr class="even">
<td><code
id="networkmanager_get_network_resources_:_CoreNetworkId">CoreNetworkId</code></td>
<td><p>The ID of a core network.</p></td>
</tr>
<tr class="odd">
<td><code
id="networkmanager_get_network_resources_:_RegisteredGatewayArn">RegisteredGatewayArn</code></td>
<td><p>The ARN of the gateway.</p></td>
</tr>
<tr class="even">
<td><code
id="networkmanager_get_network_resources_:_AwsRegion">AwsRegion</code></td>
<td><p>The Amazon Web Services Region.</p></td>
</tr>
<tr class="odd">
<td><code
id="networkmanager_get_network_resources_:_AccountId">AccountId</code></td>
<td><p>The Amazon Web Services account ID.</p></td>
</tr>
<tr class="even">
<td><code
id="networkmanager_get_network_resources_:_ResourceType">ResourceType</code></td>
<td><p>The resource type.</p>
<p>The following are the supported resource types for Direct
Connect:</p>
<ul>
<li><p><code>dxcon</code> - The definition model is <a
href="https://docs.aws.amazon.com/directconnect/latest/APIReference/API_Connection.html">Connection</a>.</p></li>
<li><p><code>dx-gateway</code> - The definition model is <a
href="https://docs.aws.amazon.com/directconnect/latest/APIReference/API_DirectConnectGateway.html">DirectConnectGateway</a>.</p></li>
<li><p><code>dx-vif</code> - The definition model is <a
href="https://docs.aws.amazon.com/directconnect/latest/APIReference/API_VirtualInterface.html">VirtualInterface</a>.</p></li>
</ul>
<p>The following are the supported resource types for Network
Manager:</p>
<ul>
<li><p><code>connection</code> - The definition model is <a
href="https://docs.aws.amazon.com/networkmanager/latest/APIReference/API_Connection.html">Connection</a>.</p></li>
<li><p><code>device</code> - The definition model is <a
href="https://docs.aws.amazon.com/networkmanager/latest/APIReference/API_Device.html">Device</a>.</p></li>
<li><p><code>link</code> - The definition model is <a
href="https://docs.aws.amazon.com/networkmanager/latest/APIReference/API_Link.html">Link</a>.</p></li>
<li><p><code>site</code> - The definition model is <a
href="https://docs.aws.amazon.com/networkmanager/latest/APIReference/API_Site.html">Site</a>.</p></li>
</ul>
<p>The following are the supported resource types for Amazon VPC:</p>
<ul>
<li><p><code>customer-gateway</code> - The definition model is <a
href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CustomerGateway.html">CustomerGateway</a>.</p></li>
<li><p><code>transit-gateway</code> - The definition model is <a
href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_TransitGateway.html">TransitGateway</a>.</p></li>
<li><p><code>transit-gateway-attachment</code> - The definition model is
<a
href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_TransitGatewayAttachment.html">TransitGatewayAttachment</a>.</p></li>
<li><p><code>transit-gateway-connect-peer</code> - The definition model
is <a
href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_TransitGatewayConnectPeer.html">TransitGatewayConnectPeer</a>.</p></li>
<li><p><code>transit-gateway-route-table</code> - The definition model
is <a
href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_TransitGatewayRouteTable.html">TransitGatewayRouteTable</a>.</p></li>
<li><p><code>vpn-connection</code> - The definition model is <a
href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_VpnConnection.html">VpnConnection</a>.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code
id="networkmanager_get_network_resources_:_ResourceArn">ResourceArn</code></td>
<td><p>The ARN of the resource.</p></td>
</tr>
<tr class="even">
<td><code
id="networkmanager_get_network_resources_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to return.</p></td>
</tr>
<tr class="odd">
<td><code
id="networkmanager_get_network_resources_:_NextToken">NextToken</code></td>
<td><p>The token for the next page of results.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      NetworkResources = list(
        list(
          RegisteredGatewayArn = "string",
          CoreNetworkId = "string",
          AwsRegion = "string",
          AccountId = "string",
          ResourceType = "string",
          ResourceId = "string",
          ResourceArn = "string",
          Definition = "string",
          DefinitionTimestamp = as.POSIXct(
            "2015-01-01"
          ),
          Tags = list(
            list(
              Key = "string",
              Value = "string"
            )
          ),
          Metadata = list(
            "string"
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$get_network_resources(
      GlobalNetworkId = "string",
      CoreNetworkId = "string",
      RegisteredGatewayArn = "string",
      AwsRegion = "string",
      AccountId = "string",
      ResourceType = "string",
      ResourceArn = "string",
      MaxResults = 123,
      NextToken = "string"
    )
