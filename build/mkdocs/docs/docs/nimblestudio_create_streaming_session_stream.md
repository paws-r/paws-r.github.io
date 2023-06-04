<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>nimblestudio_create_streaming_session_stream</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a streaming session stream for a streaming session

### Description

Creates a streaming session stream for a streaming session.

After invoking this API, invoke GetStreamingSessionStream with the
returned streamId to poll the resource until it is in the `READY` state.

### Usage

    nimblestudio_create_streaming_session_stream(clientToken,
      expirationInSeconds, sessionId, studioId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="nimblestudio_create_streaming_session_stream_:_clientToken">clientToken</code></td>
<td><p>Unique, case-sensitive identifier that you provide to ensure the
idempotency of the request. If you don’t specify a client token, the
Amazon Web Services SDK automatically generates a client token and uses
it for the request to ensure idempotency.</p></td>
</tr>
<tr class="even">
<td><code
id="nimblestudio_create_streaming_session_stream_:_expirationInSeconds">expirationInSeconds</code></td>
<td><p>The expiration time in seconds.</p></td>
</tr>
<tr class="odd">
<td><code
id="nimblestudio_create_streaming_session_stream_:_sessionId">sessionId</code></td>
<td><p>[required] The streaming session ID.</p></td>
</tr>
<tr class="even">
<td><code
id="nimblestudio_create_streaming_session_stream_:_studioId">studioId</code></td>
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

    svc$create_streaming_session_stream(
      clientToken = "string",
      expirationInSeconds = 123,
      sessionId = "string",
      studioId = "string"
    )
