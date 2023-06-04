<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>redshift_describe_cluster_db_revisions</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns an array of ClusterDbRevision objects

### Description

Returns an array of `ClusterDbRevision` objects.

### Usage

    redshift_describe_cluster_db_revisions(ClusterIdentifier, MaxRecords,
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
id="redshift_describe_cluster_db_revisions_:_ClusterIdentifier">ClusterIdentifier</code></td>
<td><p>A unique identifier for a cluster whose
<code>ClusterDbRevisions</code> you are requesting. This parameter is
case sensitive. All clusters defined for an account are returned by
default.</p></td>
</tr>
<tr class="even">
<td><code
id="redshift_describe_cluster_db_revisions_:_MaxRecords">MaxRecords</code></td>
<td><p>The maximum number of response records to return in each call. If
the number of remaining response records exceeds the specified
MaxRecords value, a value is returned in the <code>marker</code> field
of the response. You can retrieve the next set of response records by
providing the returned <code>marker</code> value in the
<code>marker</code> parameter and retrying the request.</p>
<p>Default: 100</p>
<p>Constraints: minimum 20, maximum 100.</p></td>
</tr>
<tr class="odd">
<td><code
id="redshift_describe_cluster_db_revisions_:_Marker">Marker</code></td>
<td><p>An optional parameter that specifies the starting point for
returning a set of response records. When the results of a
<code>describe_cluster_db_revisions</code> request exceed the value
specified in <code>MaxRecords</code>, Amazon Redshift returns a value in
the <code>marker</code> field of the response. You can retrieve the next
set of response records by providing the returned <code>marker</code>
value in the <code>marker</code> parameter and retrying the request.</p>
<p>Constraints: You can specify either the
<code>ClusterIdentifier</code> parameter, or the <code>marker</code>
parameter, but not both.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Marker = "string",
      ClusterDbRevisions = list(
        list(
          ClusterIdentifier = "string",
          CurrentDatabaseRevision = "string",
          DatabaseRevisionReleaseDate = as.POSIXct(
            "2015-01-01"
          ),
          RevisionTargets = list(
            list(
              DatabaseRevision = "string",
              Description = "string",
              DatabaseRevisionReleaseDate = as.POSIXct(
                "2015-01-01"
              )
            )
          )
        )
      )
    )

### Request syntax

    svc$describe_cluster_db_revisions(
      ClusterIdentifier = "string",
      MaxRecords = 123,
      Marker = "string"
    )
