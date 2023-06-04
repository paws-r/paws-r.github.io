<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>athena_get_session_status</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets the current status of a session

### Description

Gets the current status of a session.

### Usage

    athena_get_session_status(SessionId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="athena_get_session_status_:_SessionId">SessionId</code></td>
<td><p>[required] The session ID.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      SessionId = "string",
      Status = list(
        StartDateTime = as.POSIXct(
          "2015-01-01"
        ),
        LastModifiedDateTime = as.POSIXct(
          "2015-01-01"
        ),
        EndDateTime = as.POSIXct(
          "2015-01-01"
        ),
        IdleSinceDateTime = as.POSIXct(
          "2015-01-01"
        ),
        State = "CREATING"|"CREATED"|"IDLE"|"BUSY"|"TERMINATING"|"TERMINATED"|"DEGRADED"|"FAILED",
        StateChangeReason = "string"
      )
    )

### Request syntax

    svc$get_session_status(
      SessionId = "string"
    )
