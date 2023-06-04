<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>redshiftserverless_list_endpoint_access</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns an array of EndpointAccess objects and relevant information

### Description

Returns an array of `EndpointAccess` objects and relevant information.

### Usage

    redshiftserverless_list_endpoint_access(maxResults, nextToken, vpcId,
      workgroupName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="redshiftserverless_list_endpoint_access_:_maxResults">maxResults</code></td>
<td><p>An optional parameter that specifies the maximum number of
results to return. You can use <code>nextToken</code> to display the
next page of results.</p></td>
</tr>
<tr class="even">
<td><code
id="redshiftserverless_list_endpoint_access_:_nextToken">nextToken</code></td>
<td><p>If your initial <code>list_endpoint_access</code> operation
returns a <code>nextToken</code>, you can include the returned
<code>nextToken</code> in following <code>list_endpoint_access</code>
operations, which returns results in the next page.</p></td>
</tr>
<tr class="odd">
<td><code
id="redshiftserverless_list_endpoint_access_:_vpcId">vpcId</code></td>
<td><p>The unique identifier of the virtual private cloud with access to
Amazon Redshift Serverless.</p></td>
</tr>
<tr class="even">
<td><code
id="redshiftserverless_list_endpoint_access_:_workgroupName">workgroupName</code></td>
<td><p>The name of the workgroup associated with the VPC endpoint to
return.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      endpoints = list(
        list(
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
      ),
      nextToken = "string"
    )

### Request syntax

    svc$list_endpoint_access(
      maxResults = 123,
      nextToken = "string",
      vpcId = "string",
      workgroupName = "string"
    )
