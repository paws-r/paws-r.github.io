<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>rds_describe_global_clusters</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns information about Aurora global database clusters

### Description

Returns information about Aurora global database clusters. This API
supports pagination.

For more information on Amazon Aurora, see [What is Amazon
Aurora?](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html)
in the *Amazon Aurora User Guide*.

This action only applies to Aurora DB clusters.

### Usage

    rds_describe_global_clusters(GlobalClusterIdentifier, Filters,
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
id="rds_describe_global_clusters_:_GlobalClusterIdentifier">GlobalClusterIdentifier</code></td>
<td><p>The user-supplied DB cluster identifier. If this parameter is
specified, information from only the specific DB cluster is returned.
This parameter isn't case-sensitive.</p>
<p>Constraints:</p>
<ul>
<li><p>If supplied, must match an existing DBClusterIdentifier.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="rds_describe_global_clusters_:_Filters">Filters</code></td>
<td><p>This parameter isn't currently supported.</p></td>
</tr>
<tr class="odd">
<td><code
id="rds_describe_global_clusters_:_MaxRecords">MaxRecords</code></td>
<td><p>The maximum number of records to include in the response. If more
records exist than the specified <code>MaxRecords</code> value, a
pagination token called a marker is included in the response so that you
can retrieve the remaining results.</p>
<p>Default: 100</p>
<p>Constraints: Minimum 20, maximum 100.</p></td>
</tr>
<tr class="even">
<td><code id="rds_describe_global_clusters_:_Marker">Marker</code></td>
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
              IsWriter = TRUE|FALSE,
              GlobalWriteForwardingStatus = "enabled"|"disabled"|"enabling"|"disabling"|"unknown"
            )
          ),
          FailoverState = list(
            Status = "pending"|"failing-over"|"cancelling",
            FromDbClusterArn = "string",
            ToDbClusterArn = "string"
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
