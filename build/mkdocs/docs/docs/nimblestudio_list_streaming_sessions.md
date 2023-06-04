<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>nimblestudio_list_streaming_sessions</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists the streaming sessions in a studio

### Description

Lists the streaming sessions in a studio.

### Usage

    nimblestudio_list_streaming_sessions(createdBy, nextToken, ownedBy,
      sessionIds, studioId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="nimblestudio_list_streaming_sessions_:_createdBy">createdBy</code></td>
<td><p>Filters the request to streaming sessions created by the given
user.</p></td>
</tr>
<tr class="even">
<td><code
id="nimblestudio_list_streaming_sessions_:_nextToken">nextToken</code></td>
<td><p>The token for the next set of results, or null if there are no
more results.</p></td>
</tr>
<tr class="odd">
<td><code
id="nimblestudio_list_streaming_sessions_:_ownedBy">ownedBy</code></td>
<td><p>Filters the request to streaming session owned by the given
user</p></td>
</tr>
<tr class="even">
<td><code
id="nimblestudio_list_streaming_sessions_:_sessionIds">sessionIds</code></td>
<td><p>Filters the request to only the provided session IDs.</p></td>
</tr>
<tr class="odd">
<td><code
id="nimblestudio_list_streaming_sessions_:_studioId">studioId</code></td>
<td><p>[required] The studio ID.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      nextToken = "string",
      sessions = list(
        list(
          arn = "string",
          automaticTerminationMode = "DEACTIVATED"|"ACTIVATED",
          backupMode = "AUTOMATIC"|"DEACTIVATED",
          createdAt = as.POSIXct(
            "2015-01-01"
          ),
          createdBy = "string",
          ec2InstanceType = "string",
          launchProfileId = "string",
          maxBackupsToRetain = 123,
          ownedBy = "string",
          sessionId = "string",
          sessionPersistenceMode = "DEACTIVATED"|"ACTIVATED",
          startedAt = as.POSIXct(
            "2015-01-01"
          ),
          startedBy = "string",
          startedFromBackupId = "string",
          state = "CREATE_IN_PROGRESS"|"DELETE_IN_PROGRESS"|"READY"|"DELETED"|"CREATE_FAILED"|"DELETE_FAILED"|"STOP_IN_PROGRESS"|"START_IN_PROGRESS"|"STOPPED"|"STOP_FAILED"|"START_FAILED",
          statusCode = "STREAMING_SESSION_READY"|"STREAMING_SESSION_DELETED"|"STREAMING_SESSION_CREATE_IN_PROGRESS"|"STREAMING_SESSION_DELETE_IN_PROGRESS"|"INTERNAL_ERROR"|"INSUFFICIENT_CAPACITY"|"ACTIVE_DIRECTORY_DOMAIN_JOIN_ERROR"|"NETWORK_CONNECTION_ERROR"|"INITIALIZATION_SCRIPT_ERROR"|"DECRYPT_STREAMING_IMAGE_ERROR"|"NETWORK_INTERFACE_ERROR"|"STREAMING_SESSION_STOPPED"|"STREAMING_SESSION_STARTED"|"STREAMING_SESSION_STOP_IN_PROGRESS"|"STREAMING_SESSION_START_IN_PROGRESS"|"AMI_VALIDATION_ERROR",
          statusMessage = "string",
          stopAt = as.POSIXct(
            "2015-01-01"
          ),
          stoppedAt = as.POSIXct(
            "2015-01-01"
          ),
          stoppedBy = "string",
          streamingImageId = "string",
          tags = list(
            "string"
          ),
          terminateAt = as.POSIXct(
            "2015-01-01"
          ),
          updatedAt = as.POSIXct(
            "2015-01-01"
          ),
          updatedBy = "string",
          volumeConfiguration = list(
            iops = 123,
            size = 123,
            throughput = 123
          ),
          volumeRetentionMode = "RETAIN"|"DELETE"
        )
      )
    )

### Request syntax

    svc$list_streaming_sessions(
      createdBy = "string",
      nextToken = "string",
      ownedBy = "string",
      sessionIds = "string",
      studioId = "string"
    )
