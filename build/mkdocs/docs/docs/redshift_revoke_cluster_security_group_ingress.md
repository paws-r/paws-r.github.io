<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>redshift_revoke_cluster_security_group_ingress</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Revokes an ingress rule in an Amazon Redshift security group for a previously authorized IP range or Amazon EC2 security group

### Description

Revokes an ingress rule in an Amazon Redshift security group for a
previously authorized IP range or Amazon EC2 security group. To add an
ingress rule, see `authorize_cluster_security_group_ingress`. For
information about managing security groups, go to [Amazon Redshift
Cluster Security
Groups](https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-security-groups.html)
in the *Amazon Redshift Cluster Management Guide*.

### Usage

    redshift_revoke_cluster_security_group_ingress(ClusterSecurityGroupName,
      CIDRIP, EC2SecurityGroupName, EC2SecurityGroupOwnerId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="redshift_revoke_cluster_security_group_ingress_:_ClusterSecurityGroupName">ClusterSecurityGroupName</code></td>
<td><p>[required] The name of the security Group from which to revoke
the ingress rule.</p></td>
</tr>
<tr class="even">
<td><code
id="redshift_revoke_cluster_security_group_ingress_:_CIDRIP">CIDRIP</code></td>
<td><p>The IP range for which to revoke access. This range must be a
valid Classless Inter-Domain Routing (CIDR) block of IP addresses. If
<code>CIDRIP</code> is specified, <code>EC2SecurityGroupName</code> and
<code>EC2SecurityGroupOwnerId</code> cannot be provided.</p></td>
</tr>
<tr class="odd">
<td><code
id="redshift_revoke_cluster_security_group_ingress_:_EC2SecurityGroupName">EC2SecurityGroupName</code></td>
<td><p>The name of the EC2 Security Group whose access is to be revoked.
If <code>EC2SecurityGroupName</code> is specified,
<code>EC2SecurityGroupOwnerId</code> must also be provided and
<code>CIDRIP</code> cannot be provided.</p></td>
</tr>
<tr class="even">
<td><code
id="redshift_revoke_cluster_security_group_ingress_:_EC2SecurityGroupOwnerId">EC2SecurityGroupOwnerId</code></td>
<td><p>The Amazon Web Services account number of the owner of the
security group specified in the <code>EC2SecurityGroupName</code>
parameter. The Amazon Web Services access key ID is not an acceptable
value. If <code>EC2SecurityGroupOwnerId</code> is specified,
<code>EC2SecurityGroupName</code> must also be provided. and
<code>CIDRIP</code> cannot be provided.</p>
<p>Example: <code>111122223333</code></p></td>
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

    svc$revoke_cluster_security_group_ingress(
      ClusterSecurityGroupName = "string",
      CIDRIP = "string",
      EC2SecurityGroupName = "string",
      EC2SecurityGroupOwnerId = "string"
    )
