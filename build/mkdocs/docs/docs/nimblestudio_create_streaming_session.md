<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>nimblestudio_create_streaming_session</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a streaming session in a studio

### Description

Creates a streaming session in a studio.

After invoking this operation, you must poll GetStreamingSession until
the streaming session is in the `READY` state.

### Usage

    nimblestudio_create_streaming_session(clientToken, ec2InstanceType,
      launchProfileId, ownedBy, streamingImageId, studioId, tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="nimblestudio_create_streaming_session_:_clientToken">clientToken</code></td>
<td><p>Unique, case-sensitive identifier that you provide to ensure the
idempotency of the request. If you don’t specify a client token, the
Amazon Web Services SDK automatically generates a client token and uses
it for the request to ensure idempotency.</p></td>
</tr>
<tr class="even">
<td><code
id="nimblestudio_create_streaming_session_:_ec2InstanceType">ec2InstanceType</code></td>
<td><p>The EC2 Instance type used for the streaming session.</p></td>
</tr>
<tr class="odd">
<td><code
id="nimblestudio_create_streaming_session_:_launchProfileId">launchProfileId</code></td>
<td><p>[required] The ID of the launch profile used to control access
from the streaming session.</p></td>
</tr>
<tr class="even">
<td><code
id="nimblestudio_create_streaming_session_:_ownedBy">ownedBy</code></td>
<td><p>The user ID of the user that owns the streaming session. The user
that owns the session will be logging into the session and interacting
with the virtual workstation.</p></td>
</tr>
<tr class="odd">
<td><code
id="nimblestudio_create_streaming_session_:_streamingImageId">streamingImageId</code></td>
<td><p>The ID of the streaming image.</p></td>
</tr>
<tr class="even">
<td><code
id="nimblestudio_create_streaming_session_:_studioId">studioId</code></td>
<td><p>[required] The studio ID.</p></td>
</tr>
<tr class="odd">
<td><code
id="nimblestudio_create_streaming_session_:_tags">tags</code></td>
<td><p>A collection of labels, in the form of key-value pairs, that
apply to this resource.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      session = list(
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

### Request syntax

    svc$create_streaming_session(
      clientToken = "string",
      ec2InstanceType = "g4dn.xlarge"|"g4dn.2xlarge"|"g4dn.4xlarge"|"g4dn.8xlarge"|"g4dn.12xlarge"|"g4dn.16xlarge"|"g3.4xlarge"|"g3s.xlarge"|"g5.xlarge"|"g5.2xlarge"|"g5.4xlarge"|"g5.8xlarge"|"g5.16xlarge",
      launchProfileId = "string",
      ownedBy = "string",
      streamingImageId = "string",
      studioId = "string",
      tags = list(
        "string"
      )
    )
