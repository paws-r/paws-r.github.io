<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>redshiftserverless_delete_workgroup</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a workgroup

### Description

Deletes a workgroup.

### Usage

    redshiftserverless_delete_workgroup(workgroupName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="redshiftserverless_delete_workgroup_:_workgroupName">workgroupName</code></td>
<td><p>[required] The name of the workgroup to be deleted.</p></td>
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

    svc$delete_workgroup(
      workgroupName = "string"
    )
