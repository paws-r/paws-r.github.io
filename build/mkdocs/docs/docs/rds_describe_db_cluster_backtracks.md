<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>rds_describe_db_cluster_backtracks</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns information about backtracks for a DB cluster

### Description

Returns information about backtracks for a DB cluster.

For more information on Amazon Aurora, see [What is Amazon
Aurora?](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html)
in the *Amazon Aurora User Guide*.

This action only applies to Aurora MySQL DB clusters.

### Usage

    rds_describe_db_cluster_backtracks(DBClusterIdentifier,
      BacktrackIdentifier, Filters, MaxRecords, Marker)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="rds_describe_db_cluster_backtracks_:_DBClusterIdentifier">DBClusterIdentifier</code></td>
<td><p>[required] The DB cluster identifier of the DB cluster to be
described. This parameter is stored as a lowercase string.</p>
<p>Constraints:</p>
<ul>
<li><p>Must contain from 1 to 63 alphanumeric characters or
hyphens.</p></li>
<li><p>First character must be a letter.</p></li>
<li><p>Can't end with a hyphen or contain two consecutive
hyphens.</p></li>
</ul>
<p>Example: <code>my-cluster1</code></p></td>
</tr>
<tr class="even">
<td><code
id="rds_describe_db_cluster_backtracks_:_BacktrackIdentifier">BacktrackIdentifier</code></td>
<td><p>If specified, this value is the backtrack identifier of the
backtrack to be described.</p>
<p>Constraints:</p>
<ul>
<li><p>Must contain a valid universally unique identifier (UUID). For
more information about UUIDs, see <a
href="https://en.wikipedia.org/wiki/Universally_unique_identifier">Universally
unique identifier</a>.</p></li>
</ul>
<p>Example: <code
style="white-space: pre;">⁠123e4567-e89b-12d3-a456-426655440000⁠</code></p></td>
</tr>
<tr class="odd">
<td><code
id="rds_describe_db_cluster_backtracks_:_Filters">Filters</code></td>
<td><p>A filter that specifies one or more DB clusters to describe.
Supported filters include the following:</p>
<ul>
<li><p><code>db-cluster-backtrack-id</code> - Accepts backtrack
identifiers. The results list includes information about only the
backtracks identified by these identifiers.</p></li>
<li><p><code>db-cluster-backtrack-status</code> - Accepts any of the
following backtrack status values:</p>
<ul>
<li><p><code>applying</code></p></li>
<li><p><code>completed</code></p></li>
<li><p><code>failed</code></p></li>
<li><p><code>pending</code></p></li>
</ul>
<p>The results list includes information about only the backtracks
identified by these values.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="rds_describe_db_cluster_backtracks_:_MaxRecords">MaxRecords</code></td>
<td><p>The maximum number of records to include in the response. If more
records exist than the specified <code>MaxRecords</code> value, a
pagination token called a marker is included in the response so you can
retrieve the remaining results.</p>
<p>Default: 100</p>
<p>Constraints: Minimum 20, maximum 100.</p></td>
</tr>
<tr class="odd">
<td><code
id="rds_describe_db_cluster_backtracks_:_Marker">Marker</code></td>
<td><p>An optional pagination token provided by a previous
<code>describe_db_cluster_backtracks</code> request. If this parameter
is specified, the response includes only records beyond the marker, up
to the value specified by <code>MaxRecords</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Marker = "string",
      DBClusterBacktracks = list(
        list(
          DBClusterIdentifier = "string",
          BacktrackIdentifier = "string",
          BacktrackTo = as.POSIXct(
            "2015-01-01"
          ),
          BacktrackedFrom = as.POSIXct(
            "2015-01-01"
          ),
          BacktrackRequestCreationTime = as.POSIXct(
            "2015-01-01"
          ),
          Status = "string"
        )
      )
    )

### Request syntax

    svc$describe_db_cluster_backtracks(
      DBClusterIdentifier = "string",
      BacktrackIdentifier = "string",
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
