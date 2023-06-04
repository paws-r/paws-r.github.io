<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>timestreamwrite_delete_database</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a given Timestream database

### Description

Deletes a given Timestream database. *This is an irreversible operation.
After a database is deleted, the time-series data from its tables cannot
be recovered.*

All tables in the database must be deleted first, or a
ValidationException error will be thrown.

Due to the nature of distributed retries, the operation can return
either success or a ResourceNotFoundException. Clients should consider
them equivalent.

See [code
sample](https://docs.aws.amazon.com/timestream/latest/developerguide/code-samples.delete-db.html)
for details.

### Usage

    timestreamwrite_delete_database(DatabaseName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="timestreamwrite_delete_database_:_DatabaseName">DatabaseName</code></td>
<td><p>[required] The name of the Timestream database to be
deleted.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_database(
      DatabaseName = "string"
    )
