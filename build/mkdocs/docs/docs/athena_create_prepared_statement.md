<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>athena_create_prepared_statement</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a prepared statement for use with SQL queries in Athena

### Description

Creates a prepared statement for use with SQL queries in Athena.

### Usage

    athena_create_prepared_statement(StatementName, WorkGroup,
      QueryStatement, Description)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="athena_create_prepared_statement_:_StatementName">StatementName</code></td>
<td><p>[required] The name of the prepared statement.</p></td>
</tr>
<tr class="even">
<td><code
id="athena_create_prepared_statement_:_WorkGroup">WorkGroup</code></td>
<td><p>[required] The name of the workgroup to which the prepared
statement belongs.</p></td>
</tr>
<tr class="odd">
<td><code
id="athena_create_prepared_statement_:_QueryStatement">QueryStatement</code></td>
<td><p>[required] The query string for the prepared statement.</p></td>
</tr>
<tr class="even">
<td><code
id="athena_create_prepared_statement_:_Description">Description</code></td>
<td><p>The description of the prepared statement.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$create_prepared_statement(
      StatementName = "string",
      WorkGroup = "string",
      QueryStatement = "string",
      Description = "string"
    )
