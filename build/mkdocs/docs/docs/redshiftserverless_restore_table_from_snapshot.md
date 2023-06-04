<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>redshiftserverless_restore_table_from_snapshot</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Restores a table from a snapshot to your Amazon Redshift Serverless instance

### Description

Restores a table from a snapshot to your Amazon Redshift Serverless
instance. You can't use this operation to restore tables with
[interleaved sort
keys](https://docs.aws.amazon.com/redshift/latest/dg/t_Sorting_data.html#t_Sorting_data-interleaved).

### Usage

    redshiftserverless_restore_table_from_snapshot(
      activateCaseSensitiveIdentifier, namespaceName, newTableName,
      snapshotName, sourceDatabaseName, sourceSchemaName, sourceTableName,
      targetDatabaseName, targetSchemaName, workgroupName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="redshiftserverless_restore_table_from_snapshot_:_activateCaseSensitiveIdentifier">activateCaseSensitiveIdentifier</code></td>
<td><p>Indicates whether name identifiers for database, schema, and
table are case sensitive. If true, the names are case sensitive. If
false, the names are not case sensitive. The default is false.</p></td>
</tr>
<tr class="even">
<td><code
id="redshiftserverless_restore_table_from_snapshot_:_namespaceName">namespaceName</code></td>
<td><p>[required] The namespace of the snapshot to restore
from.</p></td>
</tr>
<tr class="odd">
<td><code
id="redshiftserverless_restore_table_from_snapshot_:_newTableName">newTableName</code></td>
<td><p>[required] The name of the table to create from the restore
operation.</p></td>
</tr>
<tr class="even">
<td><code
id="redshiftserverless_restore_table_from_snapshot_:_snapshotName">snapshotName</code></td>
<td><p>[required] The name of the snapshot to restore the table
from.</p></td>
</tr>
<tr class="odd">
<td><code
id="redshiftserverless_restore_table_from_snapshot_:_sourceDatabaseName">sourceDatabaseName</code></td>
<td><p>[required] The name of the source database that contains the
table being restored.</p></td>
</tr>
<tr class="even">
<td><code
id="redshiftserverless_restore_table_from_snapshot_:_sourceSchemaName">sourceSchemaName</code></td>
<td><p>The name of the source schema that contains the table being
restored.</p></td>
</tr>
<tr class="odd">
<td><code
id="redshiftserverless_restore_table_from_snapshot_:_sourceTableName">sourceTableName</code></td>
<td><p>[required] The name of the source table being restored.</p></td>
</tr>
<tr class="even">
<td><code
id="redshiftserverless_restore_table_from_snapshot_:_targetDatabaseName">targetDatabaseName</code></td>
<td><p>The name of the database to restore the table to.</p></td>
</tr>
<tr class="odd">
<td><code
id="redshiftserverless_restore_table_from_snapshot_:_targetSchemaName">targetSchemaName</code></td>
<td><p>The name of the schema to restore the table to.</p></td>
</tr>
<tr class="even">
<td><code
id="redshiftserverless_restore_table_from_snapshot_:_workgroupName">workgroupName</code></td>
<td><p>[required] The workgroup to restore the table to.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      tableRestoreStatus = list(
        message = "string",
        namespaceName = "string",
        newTableName = "string",
        progressInMegaBytes = 123,
        requestTime = as.POSIXct(
          "2015-01-01"
        ),
        snapshotName = "string",
        sourceDatabaseName = "string",
        sourceSchemaName = "string",
        sourceTableName = "string",
        status = "string",
        tableRestoreRequestId = "string",
        targetDatabaseName = "string",
        targetSchemaName = "string",
        totalDataInMegaBytes = 123,
        workgroupName = "string"
      )
    )

### Request syntax

    svc$restore_table_from_snapshot(
      activateCaseSensitiveIdentifier = TRUE|FALSE,
      namespaceName = "string",
      newTableName = "string",
      snapshotName = "string",
      sourceDatabaseName = "string",
      sourceSchemaName = "string",
      sourceTableName = "string",
      targetDatabaseName = "string",
      targetSchemaName = "string",
      workgroupName = "string"
    )
