<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>athena_delete_prepared_statement</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the prepared statement with the specified name from the specified workgroup

### Description

Deletes the prepared statement with the specified name from the
specified workgroup.

### Usage

    athena_delete_prepared_statement(StatementName, WorkGroup)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="athena_delete_prepared_statement_:_StatementName">StatementName</code></td>
<td><p>[required] The name of the prepared statement to delete.</p></td>
</tr>
<tr class="even">
<td><code
id="athena_delete_prepared_statement_:_WorkGroup">WorkGroup</code></td>
<td><p>[required] The workgroup to which the statement to be deleted
belongs.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_prepared_statement(
      StatementName = "string",
      WorkGroup = "string"
    )
