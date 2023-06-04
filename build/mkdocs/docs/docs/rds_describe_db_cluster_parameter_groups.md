<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>rds_describe_db_cluster_parameter_groups</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a list of DBClusterParameterGroup descriptions

### Description

Returns a list of `DBClusterParameterGroup` descriptions. If a
`DBClusterParameterGroupName` parameter is specified, the list will
contain only the description of the specified DB cluster parameter
group.

For more information on Amazon Aurora, see [What is Amazon
Aurora?](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html)
in the *Amazon Aurora User Guide*.

For more information on Multi-AZ DB clusters, see [Multi-AZ DB cluster
deployments](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/multi-az-db-clusters-concepts.html)
in the *Amazon RDS User Guide*.

### Usage

    rds_describe_db_cluster_parameter_groups(DBClusterParameterGroupName,
      Filters, MaxRecords, Marker)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="rds_describe_db_cluster_parameter_groups_:_DBClusterParameterGroupName">DBClusterParameterGroupName</code></td>
<td><p>The name of a specific DB cluster parameter group to return
details for.</p>
<p>Constraints:</p>
<ul>
<li><p>If supplied, must match the name of an existing
DBClusterParameterGroup.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="rds_describe_db_cluster_parameter_groups_:_Filters">Filters</code></td>
<td><p>This parameter isn't currently supported.</p></td>
</tr>
<tr class="odd">
<td><code
id="rds_describe_db_cluster_parameter_groups_:_MaxRecords">MaxRecords</code></td>
<td><p>The maximum number of records to include in the response. If more
records exist than the specified <code>MaxRecords</code> value, a
pagination token called a marker is included in the response so you can
retrieve the remaining results.</p>
<p>Default: 100</p>
<p>Constraints: Minimum 20, maximum 100.</p></td>
</tr>
<tr class="even">
<td><code
id="rds_describe_db_cluster_parameter_groups_:_Marker">Marker</code></td>
<td><p>An optional pagination token provided by a previous
<code>describe_db_cluster_parameter_groups</code> request. If this
parameter is specified, the response includes only records beyond the
marker, up to the value specified by <code>MaxRecords</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Marker = "string",
      DBClusterParameterGroups = list(
        list(
          DBClusterParameterGroupName = "string",
          DBParameterGroupFamily = "string",
          Description = "string",
          DBClusterParameterGroupArn = "string"
        )
      )
    )

### Request syntax

    svc$describe_db_cluster_parameter_groups(
      DBClusterParameterGroupName = "string",
      Filters = list(
        list(
          Name = "string",
          Values = list(
            "string"
          )
        )
      ),
      MaxRecords = 123,
      Marker = "string"
    )
