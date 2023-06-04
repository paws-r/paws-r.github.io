<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>redshift_create_cluster_security_group</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a new Amazon Redshift security group

### Description

Creates a new Amazon Redshift security group. You use security groups to
control access to non-VPC clusters.

For information about managing security groups, go to [Amazon Redshift
Cluster Security
Groups](https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-security-groups.html)
in the *Amazon Redshift Cluster Management Guide*.

### Usage

    redshift_create_cluster_security_group(ClusterSecurityGroupName,
      Description, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="redshift_create_cluster_security_group_:_ClusterSecurityGroupName">ClusterSecurityGroupName</code></td>
<td><p>[required] The name for the security group. Amazon Redshift
stores the value as a lowercase string.</p>
<p>Constraints:</p>
<ul>
<li><p>Must contain no more than 255 alphanumeric characters or
hyphens.</p></li>
<li><p>Must not be "Default".</p></li>
<li><p>Must be unique for all security groups that are created by your
Amazon Web Services account.</p></li>
</ul>
<p>Example: <code>examplesecuritygroup</code></p></td>
</tr>
<tr class="even">
<td><code
id="redshift_create_cluster_security_group_:_Description">Description</code></td>
<td><p>[required] A description for the security group.</p></td>
</tr>
<tr class="odd">
<td><code
id="redshift_create_cluster_security_group_:_Tags">Tags</code></td>
<td><p>A list of tag instances.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ClusterSecurityGroup = list(
        ClusterSecurityGroupName = "string",
        Description = "string",
        EC2SecurityGroups = list(
          list(
            Status = "string",
            EC2SecurityGroupName = "string",
            EC2SecurityGroupOwnerId = "string",
            Tags = list(
              list(
                Key = "string",
                Value = "string"
              )
            )
          )
        ),
        IPRanges = list(
          list(
            Status = "string",
            CIDRIP = "string",
            Tags = list(
              list(
                Key = "string",
                Value = "string"
              )
            )
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

    svc$create_cluster_security_group(
      ClusterSecurityGroupName = "string",
      Description = "string",
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )
