<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>timestreamwrite_delete_table</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a given Timestream table

### Description

Deletes a given Timestream table. This is an irreversible operation.
After a Timestream database table is deleted, the time-series data
stored in the table cannot be recovered.

Due to the nature of distributed retries, the operation can return
either success or a ResourceNotFoundException. Clients should consider
them equivalent.

See [code
sample](https://docs.aws.amazon.com/timestream/latest/developerguide/code-samples.delete-table.html)
for details.

### Usage

    timestreamwrite_delete_table(DatabaseName, TableName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="timestreamwrite_delete_table_:_DatabaseName">DatabaseName</code></td>
<td><p>[required] The name of the database where the Timestream database
is to be deleted.</p></td>
</tr>
<tr class="even">
<td><code
id="timestreamwrite_delete_table_:_TableName">TableName</code></td>
<td><p>[required] The name of the Timestream table to be
deleted.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_table(
      DatabaseName = "string",
      TableName = "string"
    )
