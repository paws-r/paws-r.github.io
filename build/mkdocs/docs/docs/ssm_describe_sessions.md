<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ssm_describe_sessions</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves a list of all active sessions (both connected and disconnected) or terminated sessions from the past 30 days

### Description

Retrieves a list of all active sessions (both connected and
disconnected) or terminated sessions from the past 30 days.

### Usage

    ssm_describe_sessions(State, MaxResults, NextToken, Filters)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ssm_describe_sessions_:_State">State</code></td>
<td><p>[required] The session status to retrieve a list of sessions for.
For example, "Active".</p></td>
</tr>
<tr class="even">
<td><code id="ssm_describe_sessions_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of items to return for this call. The call
also returns a token that you can specify in a subsequent call to get
the next set of results.</p></td>
</tr>
<tr class="odd">
<td><code id="ssm_describe_sessions_:_NextToken">NextToken</code></td>
<td><p>The token for the next set of items to return. (You received this
token from a previous call.)</p></td>
</tr>
<tr class="even">
<td><code id="ssm_describe_sessions_:_Filters">Filters</code></td>
<td><p>One or more filters to limit the type of sessions returned by the
request.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Sessions = list(
        list(
          SessionId = "string",
          Target = "string",
          Status = "Connected"|"Connecting"|"Disconnected"|"Terminated"|"Terminating"|"Failed",
          StartDate = as.POSIXct(
            "2015-01-01"
          ),
          EndDate = as.POSIXct(
            "2015-01-01"
          ),
          DocumentName = "string",
          Owner = "string",
          Reason = "string",
          Details = "string",
          OutputUrl = list(
            S3OutputUrl = "string",
            CloudWatchOutputUrl = "string"
          ),
          MaxSessionDuration = "string"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$describe_sessions(
      State = "Active"|"History",
      MaxResults = 123,
      NextToken = "string",
      Filters = list(
        list(
          key = "InvokedAfter"|"InvokedBefore"|"Target"|"Owner"|"Status"|"SessionId",
          value = "string"
        )
      )
    )
