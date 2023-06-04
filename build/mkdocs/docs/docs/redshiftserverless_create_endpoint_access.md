<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>redshiftserverless_create_endpoint_access</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates an Amazon Redshift Serverless managed VPC endpoint

### Description

Creates an Amazon Redshift Serverless managed VPC endpoint.

### Usage

    redshiftserverless_create_endpoint_access(endpointName, subnetIds,
      vpcSecurityGroupIds, workgroupName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="redshiftserverless_create_endpoint_access_:_endpointName">endpointName</code></td>
<td><p>[required] The name of the VPC endpoint. An endpoint name must
contain 1-30 characters. Valid characters are A-Z, a-z, 0-9, and
hyphen(-). The first character must be a letter. The name can't contain
two consecutive hyphens or end with a hyphen.</p></td>
</tr>
<tr class="even">
<td><code
id="redshiftserverless_create_endpoint_access_:_subnetIds">subnetIds</code></td>
<td><p>[required] The unique identifers of subnets from which Amazon
Redshift Serverless chooses one to deploy a VPC endpoint.</p></td>
</tr>
<tr class="odd">
<td><code
id="redshiftserverless_create_endpoint_access_:_vpcSecurityGroupIds">vpcSecurityGroupIds</code></td>
<td><p>The unique identifiers of the security group that defines the
ports, protocols, and sources for inbound traffic that you are
authorizing into your endpoint.</p></td>
</tr>
<tr class="even">
<td><code
id="redshiftserverless_create_endpoint_access_:_workgroupName">workgroupName</code></td>
<td><p>[required] The name of the workgroup to associate with the VPC
endpoint.</p></td>
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

    svc$create_endpoint_access(
      endpointName = "string",
      subnetIds = list(
        "string"
      ),
      vpcSecurityGroupIds = list(
        "string"
      ),
      workgroupName = "string"
    )
