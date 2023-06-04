<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>redshiftserverless_list_workgroups</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns information about a list of specified workgroups

### Description

Returns information about a list of specified workgroups.

### Usage

    redshiftserverless_list_workgroups(maxResults, nextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="redshiftserverless_list_workgroups_:_maxResults">maxResults</code></td>
<td><p>An optional parameter that specifies the maximum number of
results to return. You can use <code>nextToken</code> to display the
next page of results.</p></td>
</tr>
<tr class="even">
<td><code
id="redshiftserverless_list_workgroups_:_nextToken">nextToken</code></td>
<td><p>If your initial ListWorkgroups operation returns a
<code>nextToken</code>, you can include the returned
<code>nextToken</code> in following ListNamespaces operations, which
returns results in the next page.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      nextToken = "string",
      workgroups = list(
        list(
          baseCapacity = 123,
          configParameters = list(
            list(
              parameterKey = "string",
              parameterValue = "string"
            )
          ),
          creationDate = as.POSIXct(
            "2015-01-01"
          ),
          endpoint = list(
            address = "string",
            port = 123,
            vpcEndpoints = list(
              list(
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
              )
            )
          ),
          enhancedVpcRouting = TRUE|FALSE,
          namespaceName = "string",
          port = 123,
          publiclyAccessible = TRUE|FALSE,
          securityGroupIds = list(
            "string"
          ),
          status = "CREATING"|"AVAILABLE"|"MODIFYING"|"DELETING",
          subnetIds = list(
            "string"
          ),
          workgroupArn = "string",
          workgroupId = "string",
          workgroupName = "string"
        )
      )
    )

### Request syntax

    svc$list_workgroups(
      maxResults = 123,
      nextToken = "string"
    )
