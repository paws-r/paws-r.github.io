<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>redshiftserverless_update_endpoint_access</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates an Amazon Redshift Serverless managed endpoint

### Description

Updates an Amazon Redshift Serverless managed endpoint.

### Usage

    redshiftserverless_update_endpoint_access(endpointName,
      vpcSecurityGroupIds)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="redshiftserverless_update_endpoint_access_:_endpointName">endpointName</code></td>
<td><p>[required] The name of the VPC endpoint to update.</p></td>
</tr>
<tr class="even">
<td><code
id="redshiftserverless_update_endpoint_access_:_vpcSecurityGroupIds">vpcSecurityGroupIds</code></td>
<td><p>The list of VPC security groups associated with the endpoint
after the endpoint is modified.</p></td>
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

    svc$update_endpoint_access(
      endpointName = "string",
      vpcSecurityGroupIds = list(
        "string"
      )
    )
