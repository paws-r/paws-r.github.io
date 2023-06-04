<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>redshift_modify_cluster_subnet_group</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Modifies a cluster subnet group to include the specified list of VPC subnets

### Description

Modifies a cluster subnet group to include the specified list of VPC
subnets. The operation replaces the existing list of subnets with the
new list of subnets.

### Usage

    redshift_modify_cluster_subnet_group(ClusterSubnetGroupName,
      Description, SubnetIds)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="redshift_modify_cluster_subnet_group_:_ClusterSubnetGroupName">ClusterSubnetGroupName</code></td>
<td><p>[required] The name of the subnet group to be modified.</p></td>
</tr>
<tr class="even">
<td><code
id="redshift_modify_cluster_subnet_group_:_Description">Description</code></td>
<td><p>A text description of the subnet group to be modified.</p></td>
</tr>
<tr class="odd">
<td><code
id="redshift_modify_cluster_subnet_group_:_SubnetIds">SubnetIds</code></td>
<td><p>[required] An array of VPC subnet IDs. A maximum of 20 subnets
can be modified in a single request.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ClusterSubnetGroup = list(
        ClusterSubnetGroupName = "string",
        Description = "string",
        VpcId = "string",
        SubnetGroupStatus = "string",
        Subnets = list(
          list(
            SubnetIdentifier = "string",
            SubnetAvailabilityZone = list(
              Name = "string",
              SupportedPlatforms = list(
                list(
                  Name = "string"
                )
              )
            ),
            SubnetStatus = "string"
          )
        ),
        Tags = list(
          list(
            Key = "string",
            Value = "string"
          )
        )
      )
    )

### Request syntax

    svc$modify_cluster_subnet_group(
      ClusterSubnetGroupName = "string",
      Description = "string",
      SubnetIds = list(
        "string"
      )
    )
