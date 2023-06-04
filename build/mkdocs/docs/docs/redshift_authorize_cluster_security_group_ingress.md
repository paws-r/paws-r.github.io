<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>redshift_authorize_cluster_security_group_ingress</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Adds an inbound (ingress) rule to an Amazon Redshift security group

### Description

Adds an inbound (ingress) rule to an Amazon Redshift security group.
Depending on whether the application accessing your cluster is running
on the Internet or an Amazon EC2 instance, you can authorize inbound
access to either a Classless Interdomain Routing (CIDR)/Internet
Protocol (IP) range or to an Amazon EC2 security group. You can add as
many as 20 ingress rules to an Amazon Redshift security group.

If you authorize access to an Amazon EC2 security group, specify
*EC2SecurityGroupName* and *EC2SecurityGroupOwnerId*. The Amazon EC2
security group and Amazon Redshift cluster must be in the same Amazon
Web Services Region.

If you authorize access to a CIDR/IP address range, specify *CIDRIP*.
For an overview of CIDR blocks, see the Wikipedia article on [Classless
Inter-Domain
Routing](https://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing).

You must also associate the security group with a cluster so that
clients running on these IP addresses or the EC2 instance are authorized
to connect to the cluster. For information about managing security
groups, go to [Working with Security
Groups](https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-security-groups.html)
in the *Amazon Redshift Cluster Management Guide*.

### Usage

    redshift_authorize_cluster_security_group_ingress(
      ClusterSecurityGroupName, CIDRIP, EC2SecurityGroupName,
      EC2SecurityGroupOwnerId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="redshift_authorize_cluster_security_group_ingress_:_ClusterSecurityGroupName">ClusterSecurityGroupName</code></td>
<td><p>[required] The name of the security group to which the ingress
rule is added.</p></td>
</tr>
<tr class="even">
<td><code
id="redshift_authorize_cluster_security_group_ingress_:_CIDRIP">CIDRIP</code></td>
<td><p>The IP range to be added the Amazon Redshift security
group.</p></td>
</tr>
<tr class="odd">
<td><code
id="redshift_authorize_cluster_security_group_ingress_:_EC2SecurityGroupName">EC2SecurityGroupName</code></td>
<td><p>The EC2 security group to be added the Amazon Redshift security
group.</p></td>
</tr>
<tr class="even">
<td><code
id="redshift_authorize_cluster_security_group_ingress_:_EC2SecurityGroupOwnerId">EC2SecurityGroupOwnerId</code></td>
<td><p>The Amazon Web Services account number of the owner of the
security group specified by the <em>EC2SecurityGroupName</em> parameter.
The Amazon Web Services Access Key ID is not an acceptable value.</p>
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

    svc$authorize_cluster_security_group_ingress(
      ClusterSecurityGroupName = "string",
      CIDRIP = "string",
      EC2SecurityGroupName = "string",
      EC2SecurityGroupOwnerId = "string"
    )
