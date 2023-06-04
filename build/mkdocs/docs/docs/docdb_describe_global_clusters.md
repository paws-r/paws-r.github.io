<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>docdb_describe_global_clusters</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns information about Amazon DocumentDB global clusters

### Description

Returns information about Amazon DocumentDB global clusters. This API
supports pagination.

This action only applies to Amazon DocumentDB clusters.

### Usage

    docdb_describe_global_clusters(GlobalClusterIdentifier, Filters,
      MaxRecords, Marker)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="docdb_describe_global_clusters_:_GlobalClusterIdentifier">GlobalClusterIdentifier</code></td>
<td><p>The user-supplied cluster identifier. If this parameter is
specified, information from only the specific cluster is returned. This
parameter isn't case-sensitive.</p></td>
</tr>
<tr class="even">
<td><code
id="docdb_describe_global_clusters_:_Filters">Filters</code></td>
<td><p>A filter that specifies one or more global DB clusters to
describe.</p>
<p>Supported filters: <code>db-cluster-id</code> accepts cluster
identifiers and cluster Amazon Resource Names (ARNs). The results list
will only include information about the clusters identified by these
ARNs.</p></td>
</tr>
<tr class="odd">
<td><code
id="docdb_describe_global_clusters_:_MaxRecords">MaxRecords</code></td>
<td><p>The maximum number of records to include in the response. If more
records exist than the specified <code>MaxRecords</code> value, a
pagination token called a marker is included in the response so that you
can retrieve the remaining results.</p></td>
</tr>
<tr class="even">
<td><code
id="docdb_describe_global_clusters_:_Marker">Marker</code></td>
<td><p>An optional pagination token provided by a previous
<code>describe_global_clusters</code> request. If this parameter is
specified, the response includes only records beyond the marker, up to
the value specified by <code>MaxRecords</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Marker = "string",
      GlobalClusters = list(
        list(
          GlobalClusterIdentifier = "string",
          GlobalClusterResourceId = "string",
          GlobalClusterArn = "string",
          Status = "string",
          Engine = "string",
          EngineVersion = "string",
          DatabaseName = "string",
          StorageEncrypted = TRUE|FALSE,
          DeletionProtection = TRUE|FALSE,
          GlobalClusterMembers = list(
            list(
              DBClusterArn = "string",
              Readers = list(
                "string"
              ),
              IsWriter = TRUE|FALSE
            )
          )
        )
      )
    )

### Request syntax

    svc$describe_global_clusters(
      GlobalClusterIdentifier = "string",
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
