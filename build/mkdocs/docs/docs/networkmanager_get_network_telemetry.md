<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>networkmanager_get_network_telemetry</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets the network telemetry of the specified global network

### Description

Gets the network telemetry of the specified global network.

### Usage

    networkmanager_get_network_telemetry(GlobalNetworkId, CoreNetworkId,
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
id="networkmanager_get_network_telemetry_:_GlobalNetworkId">GlobalNetworkId</code></td>
<td><p>[required] The ID of the global network.</p></td>
</tr>
<tr class="even">
<td><code
id="networkmanager_get_network_telemetry_:_CoreNetworkId">CoreNetworkId</code></td>
<td><p>The ID of a core network.</p></td>
</tr>
<tr class="odd">
<td><code
id="networkmanager_get_network_telemetry_:_RegisteredGatewayArn">RegisteredGatewayArn</code></td>
<td><p>The ARN of the gateway.</p></td>
</tr>
<tr class="even">
<td><code
id="networkmanager_get_network_telemetry_:_AwsRegion">AwsRegion</code></td>
<td><p>The Amazon Web Services Region.</p></td>
</tr>
<tr class="odd">
<td><code
id="networkmanager_get_network_telemetry_:_AccountId">AccountId</code></td>
<td><p>The Amazon Web Services account ID.</p></td>
</tr>
<tr class="even">
<td><code
id="networkmanager_get_network_telemetry_:_ResourceType">ResourceType</code></td>
<td><p>The resource type.</p>
<p>The following are the supported resource types for Direct
Connect:</p>
<ul>
<li><p><code>dxcon</code></p></li>
<li><p><code>dx-gateway</code></p></li>
<li><p><code>dx-vif</code></p></li>
</ul>
<p>The following are the supported resource types for Network
Manager:</p>
<ul>
<li><p><code>connection</code></p></li>
<li><p><code>device</code></p></li>
<li><p><code>link</code></p></li>
<li><p><code>site</code></p></li>
</ul>
<p>The following are the supported resource types for Amazon VPC:</p>
<ul>
<li><p><code>customer-gateway</code></p></li>
<li><p><code>transit-gateway</code></p></li>
<li><p><code>transit-gateway-attachment</code></p></li>
<li><p><code>transit-gateway-connect-peer</code></p></li>
<li><p><code>transit-gateway-route-table</code></p></li>
<li><p><code>vpn-connection</code></p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code
id="networkmanager_get_network_telemetry_:_ResourceArn">ResourceArn</code></td>
<td><p>The ARN of the resource.</p></td>
</tr>
<tr class="even">
<td><code
id="networkmanager_get_network_telemetry_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to return.</p></td>
</tr>
<tr class="odd">
<td><code
id="networkmanager_get_network_telemetry_:_NextToken">NextToken</code></td>
<td><p>The token for the next page of results.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      NetworkTelemetry = list(
        list(
          RegisteredGatewayArn = "string",
          CoreNetworkId = "string",
          AwsRegion = "string",
          AccountId = "string",
          ResourceType = "string",
          ResourceId = "string",
          ResourceArn = "string",
          Address = "string",
          Health = list(
            Type = "BGP"|"IPSEC",
            Status = "UP"|"DOWN",
            Timestamp = as.POSIXct(
              "2015-01-01"
            )
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$get_network_telemetry(
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
