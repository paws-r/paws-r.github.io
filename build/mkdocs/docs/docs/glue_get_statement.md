<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>glue_get_statement</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves the statement

### Description

Retrieves the statement.

### Usage

    glue_get_statement(SessionId, Id, RequestOrigin)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="glue_get_statement_:_SessionId">SessionId</code></td>
<td><p>[required] The Session ID of the statement.</p></td>
</tr>
<tr class="even">
<td><code id="glue_get_statement_:_Id">Id</code></td>
<td><p>[required] The Id of the statement.</p></td>
</tr>
<tr class="odd">
<td><code
id="glue_get_statement_:_RequestOrigin">RequestOrigin</code></td>
<td><p>The origin of the request.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Statement = list(
        Id = 123,
        Code = "string",
        State = "WAITING"|"RUNNING"|"AVAILABLE"|"CANCELLING"|"CANCELLED"|"ERROR",
        Output = list(
          Data = list(
            TextPlain = "string"
          ),
          ExecutionCount = 123,
          Status = "WAITING"|"RUNNING"|"AVAILABLE"|"CANCELLING"|"CANCELLED"|"ERROR",
          ErrorName = "string",
          ErrorValue = "string",
          Traceback = list(
            "string"
          )
        ),
        Progress = 123.0,
        StartedOn = 123,
        CompletedOn = 123
      )
    )

### Request syntax

    svc$get_statement(
      SessionId = "string",
      Id = 123,
      RequestOrigin = "string"
    )
