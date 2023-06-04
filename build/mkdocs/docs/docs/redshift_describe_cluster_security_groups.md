<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>redshift_describe_cluster_security_groups</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns information about Amazon Redshift security groups

### Description

Returns information about Amazon Redshift security groups. If the name
of a security group is specified, the response will contain only
information about only that security group.

For information about managing security groups, go to [Amazon Redshift
Cluster Security
Groups](https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-security-groups.html)
in the *Amazon Redshift Cluster Management Guide*.

If you specify both tag keys and tag values in the same request, Amazon
Redshift returns all security groups that match any combination of the
specified keys and values. For example, if you have `owner` and
`environment` for tag keys, and `admin` and `test` for tag values, all
security groups that have any combination of those values are returned.

If both tag keys and values are omitted from the request, security
groups are returned regardless of whether they have tag keys or values
associated with them.

### Usage

    redshift_describe_cluster_security_groups(ClusterSecurityGroupName,
      MaxRecords, Marker, TagKeys, TagValues)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="redshift_describe_cluster_security_groups_:_ClusterSecurityGroupName">ClusterSecurityGroupName</code></td>
<td><p>The name of a cluster security group for which you are requesting
details. You must specify either the <strong>Marker</strong> parameter
or a <strong>ClusterSecurityGroupName</strong> parameter, but not
both.</p>
<p>Example: <code>securitygroup1</code></p></td>
</tr>
<tr class="even">
<td><code
id="redshift_describe_cluster_security_groups_:_MaxRecords">MaxRecords</code></td>
<td><p>The maximum number of response records to return in each call. If
the number of remaining response records exceeds the specified
<code>MaxRecords</code> value, a value is returned in a
<code>marker</code> field of the response. You can retrieve the next set
of records by retrying the command with the returned marker value.</p>
<p>Default: <code>100</code></p>
<p>Constraints: minimum 20, maximum 100.</p></td>
</tr>
<tr class="odd">
<td><code
id="redshift_describe_cluster_security_groups_:_Marker">Marker</code></td>
<td><p>An optional parameter that specifies the starting point to return
a set of response records. When the results of a
<code>describe_cluster_security_groups</code> request exceed the value
specified in <code>MaxRecords</code>, Amazon Web Services returns a
value in the <code>Marker</code> field of the response. You can retrieve
the next set of response records by providing the returned marker value
in the <code>Marker</code> parameter and retrying the request.</p>
<p>Constraints: You must specify either the
<strong>ClusterSecurityGroupName</strong> parameter or the
<strong>Marker</strong> parameter, but not both.</p></td>
</tr>
<tr class="even">
<td><code
id="redshift_describe_cluster_security_groups_:_TagKeys">TagKeys</code></td>
<td><p>A tag key or keys for which you want to return all matching
cluster security groups that are associated with the specified key or
keys. For example, suppose that you have security groups that are tagged
with keys called <code>owner</code> and <code>environment</code>. If you
specify both of these tag keys in the request, Amazon Redshift returns a
response with the security groups that have either or both of these tag
keys associated with them.</p></td>
</tr>
<tr class="odd">
<td><code
id="redshift_describe_cluster_security_groups_:_TagValues">TagValues</code></td>
<td><p>A tag value or values for which you want to return all matching
cluster security groups that are associated with the specified tag value
or values. For example, suppose that you have security groups that are
tagged with values called <code>admin</code> and <code>test</code>. If
you specify both of these tag values in the request, Amazon Redshift
returns a response with the security groups that have either or both of
these tag values associated with them.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Marker = "string",
      ClusterSecurityGroups = list(
        list(
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
    )

### Request syntax

    svc$describe_cluster_security_groups(
      ClusterSecurityGroupName = "string",
      MaxRecords = 123,
      Marker = "string",
      TagKeys = list(
        "string"
      ),
      TagValues = list(
        "string"
      )
    )
