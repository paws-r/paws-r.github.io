<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>rds_backtrack_db_cluster</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Backtracks a DB cluster to a specific time, without creating a new DB cluster

### Description

Backtracks a DB cluster to a specific time, without creating a new DB
cluster.

For more information on backtracking, see [Backtracking an Aurora DB
Cluster](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/AuroraMySQL.Managing.Backtrack.html)
in the *Amazon Aurora User Guide*.

This action applies only to Aurora MySQL DB clusters.

### Usage

    rds_backtrack_db_cluster(DBClusterIdentifier, BacktrackTo, Force,
      UseEarliestTimeOnPointInTimeUnavailable)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="rds_backtrack_db_cluster_:_DBClusterIdentifier">DBClusterIdentifier</code></td>
<td><p>[required] The DB cluster identifier of the DB cluster to be
backtracked. This parameter is stored as a lowercase string.</p>
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
id="rds_backtrack_db_cluster_:_BacktrackTo">BacktrackTo</code></td>
<td><p>[required] The timestamp of the time to backtrack the DB cluster
to, specified in ISO 8601 format. For more information about ISO 8601,
see the <a href="https://en.wikipedia.org/wiki/ISO_8601">ISO8601
Wikipedia page.</a></p>
<p>If the specified time isn't a consistent time for the DB cluster,
Aurora automatically chooses the nearest possible consistent time for
the DB cluster.</p>
<p>Constraints:</p>
<ul>
<li><p>Must contain a valid ISO 8601 timestamp.</p></li>
<li><p>Can't contain a timestamp set in the future.</p></li>
</ul>
<p>Example: <code
style="white-space: pre;">⁠2017-07-08T18:00Z⁠</code></p></td>
</tr>
<tr class="odd">
<td><code id="rds_backtrack_db_cluster_:_Force">Force</code></td>
<td><p>A value that indicates whether to force the DB cluster to
backtrack when binary logging is enabled. Otherwise, an error occurs
when binary logging is enabled.</p></td>
</tr>
<tr class="even">
<td><code
id="rds_backtrack_db_cluster_:_UseEarliestTimeOnPointInTimeUnavailable">UseEarliestTimeOnPointInTimeUnavailable</code></td>
<td><p>A value that indicates whether to backtrack the DB cluster to the
earliest possible backtrack time when <em>BacktrackTo</em> is set to a
timestamp earlier than the earliest backtrack time. When this parameter
is disabled and <em>BacktrackTo</em> is set to a timestamp earlier than
the earliest backtrack time, an error occurs.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

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

### Request syntax

    svc$backtrack_db_cluster(
      DBClusterIdentifier = "string",
      BacktrackTo = as.POSIXct(
        "2015-01-01"
      ),
      Force = TRUE|FALSE,
      UseEarliestTimeOnPointInTimeUnavailable = TRUE|FALSE
    )
