<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>redshiftserverless_get_endpoint_access</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns information, such as the name, about a VPC endpoint

### Description

Returns information, such as the name, about a VPC endpoint.

### Usage

    redshiftserverless_get_endpoint_access(endpointName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="redshiftserverless_get_endpoint_access_:_endpointName">endpointName</code></td>
<td><p>[required] The name of the VPC endpoint to return information
for.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      endpoint = list(
        address = "string",
        endpointArn = "string",
        endpointCreateTime = as.POSIXct(
          "2015-01-01"
        ),
        endpointName = "string",
        endpointStatus = "string",
        port = 123,
        subnetIds = list(
          "string"
        ),
        vpcEndpoint = list(
          networkInterfaces = list(
            list(
              availabilityZone = "string",
              networkInterfaceId = "string",
              privateIpAddress = "string",
              subnetId = "string"
            )
          ),
          vpcEndpointId = "string",
          vpcId = "string"
        ),
        vpcSecurityGroups = list(
          list(
            status = "string",
            vpcSecurityGroupId = "string"
          )
        ),
        workgroupName = "string"
      )
    )

### Request syntax

    svc$get_endpoint_access(
      endpointName = "string"
    )
