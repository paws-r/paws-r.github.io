<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ssm_resume_session</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Reconnects a session to a managed node after it has been disconnected

### Description

Reconnects a session to a managed node after it has been disconnected.
Connections can be resumed for disconnected sessions, but not terminated
sessions.

This command is primarily for use by client machines to automatically
reconnect during intermittent network issues. It isn't intended for any
other use.

### Usage

    ssm_resume_session(SessionId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ssm_resume_session_:_SessionId">SessionId</code></td>
<td><p>[required] The ID of the disconnected session to resume.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      SessionId = "string",
      TokenValue = "string",
      StreamUrl = "string"
    )

### Request syntax

    svc$resume_session(
      SessionId = "string"
    )
