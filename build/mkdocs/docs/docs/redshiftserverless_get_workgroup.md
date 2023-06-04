<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>redshiftserverless_get_workgroup</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns information about a specific workgroup

### Description

Returns information about a specific workgroup.

### Usage

    redshiftserverless_get_workgroup(workgroupName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="redshiftserverless_get_workgroup_:_workgroupName">workgroupName</code></td>
<td><p>[required] The name of the workgroup to return information
for.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      workgroup = list(
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

### Request syntax

    svc$get_workgroup(
      workgroupName = "string"
    )
