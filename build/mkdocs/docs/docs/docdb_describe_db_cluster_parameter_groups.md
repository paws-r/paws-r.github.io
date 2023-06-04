<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>docdb_describe_db_cluster_parameter_groups</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a list of DBClusterParameterGroup descriptions

### Description

Returns a list of `DBClusterParameterGroup` descriptions. If a
`DBClusterParameterGroupName` parameter is specified, the list contains
only the description of the specified cluster parameter group.

### Usage

    docdb_describe_db_cluster_parameter_groups(DBClusterParameterGroupName,
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
id="docdb_describe_db_cluster_parameter_groups_:_DBClusterParameterGroupName">DBClusterParameterGroupName</code></td>
<td><p>The name of a specific cluster parameter group to return details
for.</p>
<p>Constraints:</p>
<ul>
<li><p>If provided, must match the name of an existing
<code>DBClusterParameterGroup</code>.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="docdb_describe_db_cluster_parameter_groups_:_Filters">Filters</code></td>
<td><p>This parameter is not currently supported.</p></td>
</tr>
<tr class="odd">
<td><code
id="docdb_describe_db_cluster_parameter_groups_:_MaxRecords">MaxRecords</code></td>
<td><p>The maximum number of records to include in the response. If more
records exist than the specified <code>MaxRecords</code> value, a
pagination token (marker) is included in the response so that the
remaining results can be retrieved.</p>
<p>Default: 100</p>
<p>Constraints: Minimum 20, maximum 100.</p></td>
</tr>
<tr class="even">
<td><code
id="docdb_describe_db_cluster_parameter_groups_:_Marker">Marker</code></td>
<td><p>An optional pagination token provided by a previous request. If
this parameter is specified, the response includes only records beyond
the marker, up to the value specified by
<code>MaxRecords</code>.</p></td>
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
