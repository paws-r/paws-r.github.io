<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>glue_run_statement</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Executes the statement

### Description

Executes the statement.

### Usage

    glue_run_statement(SessionId, Code, RequestOrigin)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="glue_run_statement_:_SessionId">SessionId</code></td>
<td><p>[required] The Session Id of the statement to be run.</p></td>
</tr>
<tr class="even">
<td><code id="glue_run_statement_:_Code">Code</code></td>
<td><p>[required] The statement code to be run.</p></td>
</tr>
<tr class="odd">
<td><code
id="glue_run_statement_:_RequestOrigin">RequestOrigin</code></td>
<td><p>The origin of the request.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Id = 123
    )

### Request syntax

    svc$run_statement(
      SessionId = "string",
      Code = "string",
      RequestOrigin = "string"
    )
