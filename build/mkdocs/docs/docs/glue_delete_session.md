<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>glue_delete_session</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the session

### Description

Deletes the session.

### Usage

    glue_delete_session(Id, RequestOrigin)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="glue_delete_session_:_Id">Id</code></td>
<td><p>[required] The ID of the session to be deleted.</p></td>
</tr>
<tr class="even">
<td><code
id="glue_delete_session_:_RequestOrigin">RequestOrigin</code></td>
<td><p>The name of the origin of the delete session request.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Id = "string"
    )

### Request syntax

    svc$delete_session(
      Id = "string",
      RequestOrigin = "string"
    )
