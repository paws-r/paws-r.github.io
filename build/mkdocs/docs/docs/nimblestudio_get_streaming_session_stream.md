<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>nimblestudio_get_streaming_session_stream</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets a StreamingSessionStream for a streaming session

### Description

Gets a StreamingSessionStream for a streaming session.

Invoke this operation to poll the resource after invoking
`create_streaming_session_stream`.

After the `StreamingSessionStream` changes to the `READY` state, the url
property will contain a stream to be used with the DCV streaming client.

### Usage

    nimblestudio_get_streaming_session_stream(sessionId, streamId, studioId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="nimblestudio_get_streaming_session_stream_:_sessionId">sessionId</code></td>
<td><p>[required] The streaming session ID.</p></td>
</tr>
<tr class="even">
<td><code
id="nimblestudio_get_streaming_session_stream_:_streamId">streamId</code></td>
<td><p>[required] The streaming session stream ID.</p></td>
</tr>
<tr class="odd">
<td><code
id="nimblestudio_get_streaming_session_stream_:_studioId">studioId</code></td>
<td><p>[required] The studio ID.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      stream = list(
        createdAt = as.POSIXct(
          "2015-01-01"
        ),
        createdBy = "string",
        expiresAt = as.POSIXct(
          "2015-01-01"
        ),
        ownedBy = "string",
        state = "READY"|"CREATE_IN_PROGRESS"|"DELETE_IN_PROGRESS"|"DELETED"|"CREATE_FAILED"|"DELETE_FAILED",
        statusCode = "STREAM_CREATE_IN_PROGRESS"|"STREAM_READY"|"STREAM_DELETE_IN_PROGRESS"|"STREAM_DELETED"|"INTERNAL_ERROR"|"NETWORK_CONNECTION_ERROR",
        streamId = "string",
        url = "string"
      )
    )

### Request syntax

    svc$get_streaming_session_stream(
      sessionId = "string",
      streamId = "string",
      studioId = "string"
    )
