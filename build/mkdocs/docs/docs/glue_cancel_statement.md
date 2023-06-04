<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>glue_cancel_statement</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Cancels the statement

### Description

Cancels the statement.

### Usage

    glue_cancel_statement(SessionId, Id, RequestOrigin)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="glue_cancel_statement_:_SessionId">SessionId</code></td>
<td><p>[required] The Session ID of the statement to be
cancelled.</p></td>
</tr>
<tr class="even">
<td><code id="glue_cancel_statement_:_Id">Id</code></td>
<td><p>[required] The ID of the statement to be cancelled.</p></td>
</tr>
<tr class="odd">
<td><code
id="glue_cancel_statement_:_RequestOrigin">RequestOrigin</code></td>
<td><p>The origin of the request to cancel the statement.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$cancel_statement(
      SessionId = "string",
      Id = 123,
      RequestOrigin = "string"
    )
