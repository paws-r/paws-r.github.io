<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ssm_terminate_session</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Permanently ends a session and closes the data connection between the Session Manager client and SSM Agent on the managed node

### Description

Permanently ends a session and closes the data connection between the
Session Manager client and SSM Agent on the managed node. A terminated
session can't be resumed.

### Usage

    ssm_terminate_session(SessionId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ssm_terminate_session_:_SessionId">SessionId</code></td>
<td><p>[required] The ID of the session to terminate.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      SessionId = "string"
    )

### Request syntax

    svc$terminate_session(
      SessionId = "string"
    )
