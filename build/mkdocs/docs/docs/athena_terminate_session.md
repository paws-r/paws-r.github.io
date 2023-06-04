<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>athena_terminate_session</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Terminates an active session

### Description

Terminates an active session. A `terminate_session` call on a session
that is already inactive (for example, in a `FAILED`, `TERMINATED` or
`TERMINATING` state) succeeds but has no effect. Calculations running in
the session when `terminate_session` is called are forcefully stopped,
but may display as `FAILED` instead of `STOPPED`.

### Usage

    athena_terminate_session(SessionId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="athena_terminate_session_:_SessionId">SessionId</code></td>
<td><p>[required] The session ID.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      State = "CREATING"|"CREATED"|"IDLE"|"BUSY"|"TERMINATING"|"TERMINATED"|"DEGRADED"|"FAILED"
    )

### Request syntax

    svc$terminate_session(
      SessionId = "string"
    )
