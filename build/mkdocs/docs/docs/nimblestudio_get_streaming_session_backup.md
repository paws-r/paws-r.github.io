<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>nimblestudio_get_streaming_session_backup</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets StreamingSessionBackup resource

### Description

Gets `StreamingSessionBackup` resource.

Invoke this operation to poll for a streaming session backup while
stopping a streaming session.

### Usage

    nimblestudio_get_streaming_session_backup(backupId, studioId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="nimblestudio_get_streaming_session_backup_:_backupId">backupId</code></td>
<td><p>[required] The ID of the backup.</p></td>
</tr>
<tr class="even">
<td><code
id="nimblestudio_get_streaming_session_backup_:_studioId">studioId</code></td>
<td><p>[required] The studio ID.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      streamingSessionBackup = list(
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

### Request syntax

    svc$get_streaming_session_backup(
      backupId = "string",
      studioId = "string"
    )
