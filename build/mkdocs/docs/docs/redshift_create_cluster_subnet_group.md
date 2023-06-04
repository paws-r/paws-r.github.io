<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>redshift_create_cluster_subnet_group</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a new Amazon Redshift subnet group

### Description

Creates a new Amazon Redshift subnet group. You must provide a list of
one or more subnets in your existing Amazon Virtual Private Cloud
(Amazon VPC) when creating Amazon Redshift subnet group.

For information about subnet groups, go to [Amazon Redshift Cluster
Subnet
Groups](https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-cluster-subnet-groups.html)
in the *Amazon Redshift Cluster Management Guide*.

### Usage

    redshift_create_cluster_subnet_group(ClusterSubnetGroupName,
      Description, SubnetIds, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="redshift_create_cluster_subnet_group_:_ClusterSubnetGroupName">ClusterSubnetGroupName</code></td>
<td><p>[required] The name for the subnet group. Amazon Redshift stores
the value as a lowercase string.</p>
<p>Constraints:</p>
<ul>
<li><p>Must contain no more than 255 alphanumeric characters or
hyphens.</p></li>
<li><p>Must not be "Default".</p></li>
<li><p>Must be unique for all subnet groups that are created by your
Amazon Web Services account.</p></li>
</ul>
<p>Example: <code>examplesubnetgroup</code></p></td>
</tr>
<tr class="even">
<td><code
id="redshift_create_cluster_subnet_group_:_Description">Description</code></td>
<td><p>[required] A description for the subnet group.</p></td>
</tr>
<tr class="odd">
<td><code
id="redshift_create_cluster_subnet_group_:_SubnetIds">SubnetIds</code></td>
<td><p>[required] An array of VPC subnet IDs. A maximum of 20 subnets
can be modified in a single request.</p></td>
</tr>
<tr class="even">
<td><code
id="redshift_create_cluster_subnet_group_:_Tags">Tags</code></td>
<td><p>A list of tag instances.</p></td>
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

    svc$create_cluster_subnet_group(
      ClusterSubnetGroupName = "string",
      Description = "string",
      SubnetIds = list(
        "string"
      ),
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )
