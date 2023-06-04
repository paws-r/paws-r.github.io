<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>neptune_describe_global_clusters</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns information about Neptune global database clusters

### Description

Returns information about Neptune global database clusters. This API
supports pagination.

### Usage

    neptune_describe_global_clusters(GlobalClusterIdentifier, MaxRecords,
      Marker)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="neptune_describe_global_clusters_:_GlobalClusterIdentifier">GlobalClusterIdentifier</code></td>
<td><p>The user-supplied DB cluster identifier. If this parameter is
specified, only information about the specified DB cluster is returned.
This parameter is not case-sensitive.</p>
<p>Constraints: If supplied, must match an existing DB cluster
identifier.</p></td>
</tr>
<tr class="even">
<td><code
id="neptune_describe_global_clusters_:_MaxRecords">MaxRecords</code></td>
<td><p>The maximum number of records to include in the response. If more
records exist than the specified <code>MaxRecords</code> value, a
pagination marker token is included in the response that you can use to
retrieve the remaining results.</p>
<p>Default: <code>100</code></p>
<p>Constraints: Minimum 20, maximum 100.</p></td>
</tr>
<tr class="odd">
<td><code
id="neptune_describe_global_clusters_:_Marker">Marker</code></td>
<td><p>(<em>Optional</em>) A pagination token returned by a previous
call to <code>describe_global_clusters</code>. If this parameter is
specified, the response will only include records beyond the marker, up
to the number specified by <code>MaxRecords</code>.</p></td>
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
      MaxRecords = 123,
      Marker = "string"
    )
