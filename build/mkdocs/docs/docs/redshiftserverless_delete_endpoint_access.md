<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>redshiftserverless_delete_endpoint_access</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes an Amazon Redshift Serverless managed VPC endpoint

### Description

Deletes an Amazon Redshift Serverless managed VPC endpoint.

### Usage

    redshiftserverless_delete_endpoint_access(endpointName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="redshiftserverless_delete_endpoint_access_:_endpointName">endpointName</code></td>
<td><p>[required] The name of the VPC endpoint to delete.</p></td>
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

    svc$delete_endpoint_access(
      endpointName = "string"
    )
