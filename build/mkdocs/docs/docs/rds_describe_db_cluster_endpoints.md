<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>rds_describe_db_cluster_endpoints</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns information about endpoints for an Amazon Aurora DB cluster

### Description

Returns information about endpoints for an Amazon Aurora DB cluster.

This action only applies to Aurora DB clusters.

### Usage

    rds_describe_db_cluster_endpoints(DBClusterIdentifier,
      DBClusterEndpointIdentifier, Filters, MaxRecords, Marker)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="rds_describe_db_cluster_endpoints_:_DBClusterIdentifier">DBClusterIdentifier</code></td>
<td><p>The DB cluster identifier of the DB cluster associated with the
endpoint. This parameter is stored as a lowercase string.</p></td>
</tr>
<tr class="even">
<td><code
id="rds_describe_db_cluster_endpoints_:_DBClusterEndpointIdentifier">DBClusterEndpointIdentifier</code></td>
<td><p>The identifier of the endpoint to describe. This parameter is
stored as a lowercase string.</p></td>
</tr>
<tr class="odd">
<td><code
id="rds_describe_db_cluster_endpoints_:_Filters">Filters</code></td>
<td><p>A set of name-value pairs that define which endpoints to include
in the output. The filters are specified as name-value pairs, in the
format <code
style="white-space: pre;">⁠Name=endpoint_type,Values=endpoint_type1,endpoint_type2,...⁠</code>.
<code>Name</code> can be one of: <code>db-cluster-endpoint-type</code>,
<code>db-cluster-endpoint-custom-type</code>,
<code>db-cluster-endpoint-id</code>,
<code>db-cluster-endpoint-status</code>. <code>Values</code> for the
<code> db-cluster-endpoint-type</code> filter can be one or more of:
<code>reader</code>, <code>writer</code>, <code>custom</code>.
<code>Values</code> for the <code>db-cluster-endpoint-custom-type</code>
filter can be one or more of: <code>reader</code>, <code>any</code>.
<code>Values</code> for the <code>db-cluster-endpoint-status</code>
filter can be one or more of: <code>available</code>,
<code>creating</code>, <code>deleting</code>, <code>inactive</code>,
<code>modifying</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="rds_describe_db_cluster_endpoints_:_MaxRecords">MaxRecords</code></td>
<td><p>The maximum number of records to include in the response. If more
records exist than the specified <code>MaxRecords</code> value, a
pagination token called a marker is included in the response so you can
retrieve the remaining results.</p>
<p>Default: 100</p>
<p>Constraints: Minimum 20, maximum 100.</p></td>
</tr>
<tr class="odd">
<td><code
id="rds_describe_db_cluster_endpoints_:_Marker">Marker</code></td>
<td><p>An optional pagination token provided by a previous
<code>describe_db_cluster_endpoints</code> request. If this parameter is
specified, the response includes only records beyond the marker, up to
the value specified by <code>MaxRecords</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Marker = "string",
      DBClusterEndpoints = list(
        list(
          DBClusterEndpointIdentifier = "string",
          DBClusterIdentifier = "string",
          DBClusterEndpointResourceIdentifier = "string",
          Endpoint = "string",
          Status = "string",
          EndpointType = "string",
          CustomEndpointType = "string",
          StaticMembers = list(
            "string"
          ),
          ExcludedMembers = list(
            "string"
          ),
          DBClusterEndpointArn = "string"
        )
      )
    )

### Request syntax

    svc$describe_db_cluster_endpoints(
      DBClusterIdentifier = "string",
      DBClusterEndpointIdentifier = "string",
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
