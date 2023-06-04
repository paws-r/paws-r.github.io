<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>storagegateway_describe_gateway_information</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns metadata about a gateway such as its name, network interfaces, configured time zone, and the state (whether the gateway is running or not)

### Description

Returns metadata about a gateway such as its name, network interfaces,
configured time zone, and the state (whether the gateway is running or
not). To specify which gateway to describe, use the Amazon Resource Name
(ARN) of the gateway in your request.

### Usage

    storagegateway_describe_gateway_information(GatewayARN)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="storagegateway_describe_gateway_information_:_GatewayARN">GatewayARN</code></td>
<td><p>[required]</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      GatewayARN = "string",
      GatewayId = "string",
      GatewayName = "string",
      GatewayTimezone = "string",
      GatewayState = "string",
      GatewayNetworkInterfaces = list(
        list(
          Ipv4Address = "string",
          MacAddress = "string",
          Ipv6Address = "string"
        )
      ),
      GatewayType = "string",
      NextUpdateAvailabilityDate = "string",
      LastSoftwareUpdate = "string",
      Ec2InstanceId = "string",
      Ec2InstanceRegion = "string",
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      ),
      VPCEndpoint = "string",
      CloudWatchLogGroupARN = "string",
      HostEnvironment = "VMWARE"|"HYPER-V"|"EC2"|"KVM"|"OTHER"|"SNOWBALL",
      EndpointType = "string",
      SoftwareUpdatesEndDate = "string",
      DeprecationDate = "string",
      GatewayCapacity = "Small"|"Medium"|"Large",
      SupportedGatewayCapacities = list(
        "Small"|"Medium"|"Large"
      ),
      HostEnvironmentId = "string"
    )

### Request syntax

    svc$describe_gateway_information(
      GatewayARN = "string"
    )

### Examples

    ## Not run: 
    # Returns metadata about a gateway such as its name, network interfaces,
    # configured time zone, and the state (whether the gateway is running or
    # not).
    svc$describe_gateway_information(
      GatewayARN = "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B"
    )

    ## End(Not run)
