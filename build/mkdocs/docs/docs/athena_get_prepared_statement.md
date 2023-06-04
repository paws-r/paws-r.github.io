<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>athena_get_prepared_statement</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves the prepared statement with the specified name from the specified workgroup

### Description

Retrieves the prepared statement with the specified name from the
specified workgroup.

### Usage

    athena_get_prepared_statement(StatementName, WorkGroup)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="athena_get_prepared_statement_:_StatementName">StatementName</code></td>
<td><p>[required] The name of the prepared statement to
retrieve.</p></td>
</tr>
<tr class="even">
<td><code
id="athena_get_prepared_statement_:_WorkGroup">WorkGroup</code></td>
<td><p>[required] The workgroup to which the statement to be retrieved
belongs.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      PreparedStatement = list(
        StatementName = "string",
        QueryStatement = "string",
        WorkGroupName = "string",
        Description = "string",
        LastModifiedTime = as.POSIXct(
          "2015-01-01"
        )
      )
    )

### Request syntax

    svc$get_prepared_statement(
      StatementName = "string",
      WorkGroup = "string"
    )
