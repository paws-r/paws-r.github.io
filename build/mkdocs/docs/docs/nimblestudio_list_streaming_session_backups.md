<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>nimblestudio_list_streaming_session_backups</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists the backups of a streaming session in a studio

### Description

Lists the backups of a streaming session in a studio.

### Usage

    nimblestudio_list_streaming_session_backups(nextToken, ownedBy,
      studioId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="nimblestudio_list_streaming_session_backups_:_nextToken">nextToken</code></td>
<td><p>The token for the next set of results, or null if there are no
more results.</p></td>
</tr>
<tr class="even">
<td><code
id="nimblestudio_list_streaming_session_backups_:_ownedBy">ownedBy</code></td>
<td><p>The user ID of the user that owns the streaming session.</p></td>
</tr>
<tr class="odd">
<td><code
id="nimblestudio_list_streaming_session_backups_:_studioId">studioId</code></td>
<td><p>[required] The studio ID.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      nextToken = "string",
      streamingSessionBackups = list(
        list(
          arn = "string",
          backupId = "string",
          createdAt = as.POSIXct(
            "2015-01-01"
          ),
          launchProfileId = "string",
          ownedBy = "string",
          sessionId = "string",
          state = "CREATE_IN_PROGRESS"|"DELETE_IN_PROGRESS"|"READY"|"DELETED"|"CREATE_FAILED"|"DELETE_FAILED"|"STOP_IN_PROGRESS"|"START_IN_PROGRESS"|"STOPPED"|"STOP_FAILED"|"START_FAILED",
          statusCode = "STREAMING_SESSION_READY"|"STREAMING_SESSION_DELETED"|"STREAMING_SESSION_CREATE_IN_PROGRESS"|"STREAMING_SESSION_DELETE_IN_PROGRESS"|"INTERNAL_ERROR"|"INSUFFICIENT_CAPACITY"|"ACTIVE_DIRECTORY_DOMAIN_JOIN_ERROR"|"NETWORK_CONNECTION_ERROR"|"INITIALIZATION_SCRIPT_ERROR"|"DECRYPT_STREAMING_IMAGE_ERROR"|"NETWORK_INTERFACE_ERROR"|"STREAMING_SESSION_STOPPED"|"STREAMING_SESSION_STARTED"|"STREAMING_SESSION_STOP_IN_PROGRESS"|"STREAMING_SESSION_START_IN_PROGRESS"|"AMI_VALIDATION_ERROR",
          statusMessage = "string",
          tags = list(
            "string"
          )
        )
      )
    )

### Request syntax

    svc$list_streaming_session_backups(
      nextToken = "string",
      ownedBy = "string",
      studioId = "string"
    )
