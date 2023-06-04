<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>redshift_restore_table_from_cluster_snapshot</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a new table from a table in an Amazon Redshift cluster snapshot

### Description

Creates a new table from a table in an Amazon Redshift cluster snapshot.
You must create the new table within the Amazon Redshift cluster that
the snapshot was taken from.

You cannot use `restore_table_from_cluster_snapshot` to restore a table
with the same name as an existing table in an Amazon Redshift cluster.
That is, you cannot overwrite an existing table in a cluster with a
restored table. If you want to replace your original table with a new,
restored table, then rename or drop your original table before you call
`restore_table_from_cluster_snapshot`. When you have renamed your
original table, then you can pass the original name of the table as the
`NewTableName` parameter value in the call to
`restore_table_from_cluster_snapshot`. This way, you can replace the
original table with the table created from the snapshot.

You can't use this operation to restore tables with [interleaved sort
keys](https://docs.aws.amazon.com/redshift/latest/dg/t_Sorting_data.html#t_Sorting_data-interleaved).

### Usage

    redshift_restore_table_from_cluster_snapshot(ClusterIdentifier,
      SnapshotIdentifier, SourceDatabaseName, SourceSchemaName,
      SourceTableName, TargetDatabaseName, TargetSchemaName, NewTableName,
      EnableCaseSensitiveIdentifier)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="redshift_restore_table_from_cluster_snapshot_:_ClusterIdentifier">ClusterIdentifier</code></td>
<td><p>[required] The identifier of the Amazon Redshift cluster to
restore the table to.</p></td>
</tr>
<tr class="even">
<td><code
id="redshift_restore_table_from_cluster_snapshot_:_SnapshotIdentifier">SnapshotIdentifier</code></td>
<td><p>[required] The identifier of the snapshot to restore the table
from. This snapshot must have been created from the Amazon Redshift
cluster specified by the <code>ClusterIdentifier</code>
parameter.</p></td>
</tr>
<tr class="odd">
<td><code
id="redshift_restore_table_from_cluster_snapshot_:_SourceDatabaseName">SourceDatabaseName</code></td>
<td><p>[required] The name of the source database that contains the
table to restore from.</p></td>
</tr>
<tr class="even">
<td><code
id="redshift_restore_table_from_cluster_snapshot_:_SourceSchemaName">SourceSchemaName</code></td>
<td><p>The name of the source schema that contains the table to restore
from. If you do not specify a <code>SourceSchemaName</code> value, the
default is <code>public</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="redshift_restore_table_from_cluster_snapshot_:_SourceTableName">SourceTableName</code></td>
<td><p>[required] The name of the source table to restore from.</p></td>
</tr>
<tr class="even">
<td><code
id="redshift_restore_table_from_cluster_snapshot_:_TargetDatabaseName">TargetDatabaseName</code></td>
<td><p>The name of the database to restore the table to.</p></td>
</tr>
<tr class="odd">
<td><code
id="redshift_restore_table_from_cluster_snapshot_:_TargetSchemaName">TargetSchemaName</code></td>
<td><p>The name of the schema to restore the table to.</p></td>
</tr>
<tr class="even">
<td><code
id="redshift_restore_table_from_cluster_snapshot_:_NewTableName">NewTableName</code></td>
<td><p>[required] The name of the table to create as a result of the
current request.</p></td>
</tr>
<tr class="odd">
<td><code
id="redshift_restore_table_from_cluster_snapshot_:_EnableCaseSensitiveIdentifier">EnableCaseSensitiveIdentifier</code></td>
<td><p>Indicates whether name identifiers for database, schema, and
table are case sensitive. If <code>true</code>, the names are case
sensitive. If <code>false</code> (default), the names are not case
sensitive.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      TableRestoreStatus = list(
        TableRestoreRequestId = "string",
        Status = "PENDING"|"IN_PROGRESS"|"SUCCEEDED"|"FAILED"|"CANCELED",
        Message = "string",
        RequestTime = as.POSIXct(
          "2015-01-01"
        ),
        ProgressInMegaBytes = 123,
        TotalDataInMegaBytes = 123,
        ClusterIdentifier = "string",
        SnapshotIdentifier = "string",
        SourceDatabaseName = "string",
        SourceSchemaName = "string",
        SourceTableName = "string",
        TargetDatabaseName = "string",
        TargetSchemaName = "string",
        NewTableName = "string"
      )
    )

### Request syntax

    svc$restore_table_from_cluster_snapshot(
      ClusterIdentifier = "string",
      SnapshotIdentifier = "string",
      SourceDatabaseName = "string",
      SourceSchemaName = "string",
      SourceTableName = "string",
      TargetDatabaseName = "string",
      TargetSchemaName = "string",
      NewTableName = "string",
      EnableCaseSensitiveIdentifier = TRUE|FALSE
    )
