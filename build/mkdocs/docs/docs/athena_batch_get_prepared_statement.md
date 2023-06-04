<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>athena_batch_get_prepared_statement</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns the details of a single prepared statement or a list of up to 256 prepared statements for the array of prepared statement names that you provide

### Description

Returns the details of a single prepared statement or a list of up to
256 prepared statements for the array of prepared statement names that
you provide. Requires you to have access to the workgroup to which the
prepared statements belong. If a prepared statement cannot be retrieved
for the name specified, the statement is listed in
`UnprocessedPreparedStatementNames`.

### Usage

    athena_batch_get_prepared_statement(PreparedStatementNames, WorkGroup)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="athena_batch_get_prepared_statement_:_PreparedStatementNames">PreparedStatementNames</code></td>
<td><p>[required] A list of prepared statement names to return.</p></td>
</tr>
<tr class="even">
<td><code
id="athena_batch_get_prepared_statement_:_WorkGroup">WorkGroup</code></td>
<td><p>[required] The name of the workgroup to which the prepared
statements belong.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      PreparedStatements = list(
        list(
          StatementName = "string",
          QueryStatement = "string",
          WorkGroupName = "string",
          Description = "string",
          LastModifiedTime = as.POSIXct(
            "2015-01-01"
          )
        )
      ),
      UnprocessedPreparedStatementNames = list(
        list(
          StatementName = "string",
          ErrorCode = "string",
          ErrorMessage = "string"
        )
      )
    )

### Request syntax

    svc$batch_get_prepared_statement(
      PreparedStatementNames = list(
        "string"
      ),
      WorkGroup = "string"
    )
