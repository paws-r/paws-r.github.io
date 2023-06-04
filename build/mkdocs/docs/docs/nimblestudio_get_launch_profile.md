<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>nimblestudio_get_launch_profile</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Get a launch profile

### Description

Get a launch profile.

### Usage

    nimblestudio_get_launch_profile(launchProfileId, studioId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="nimblestudio_get_launch_profile_:_launchProfileId">launchProfileId</code></td>
<td><p>[required] The ID of the launch profile used to control access
from the streaming session.</p></td>
</tr>
<tr class="even">
<td><code
id="nimblestudio_get_launch_profile_:_studioId">studioId</code></td>
<td><p>[required] The studio ID.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      launchProfile = list(
        arn = "string",
        createdAt = as.POSIXct(
          "2015-01-01"
        ),
        createdBy = "string",
        description = "string",
        ec2SubnetIds = list(
          "string"
        ),
        launchProfileId = "string",
        launchProfileProtocolVersions = list(
          "string"
        ),
        name = "string",
        state = "CREATE_IN_PROGRESS"|"READY"|"UPDATE_IN_PROGRESS"|"DELETE_IN_PROGRESS"|"DELETED"|"DELETE_FAILED"|"CREATE_FAILED"|"UPDATE_FAILED",
        statusCode = "LAUNCH_PROFILE_CREATED"|"LAUNCH_PROFILE_UPDATED"|"LAUNCH_PROFILE_DELETED"|"LAUNCH_PROFILE_CREATE_IN_PROGRESS"|"LAUNCH_PROFILE_UPDATE_IN_PROGRESS"|"LAUNCH_PROFILE_DELETE_IN_PROGRESS"|"INTERNAL_ERROR"|"STREAMING_IMAGE_NOT_FOUND"|"STREAMING_IMAGE_NOT_READY"|"LAUNCH_PROFILE_WITH_STREAM_SESSIONS_NOT_DELETED"|"ENCRYPTION_KEY_ACCESS_DENIED"|"ENCRYPTION_KEY_NOT_FOUND"|"INVALID_SUBNETS_PROVIDED"|"INVALID_INSTANCE_TYPES_PROVIDED"|"INVALID_SUBNETS_COMBINATION",
        statusMessage = "string",
        streamConfiguration = list(
          automaticTerminationMode = "DEACTIVATED"|"ACTIVATED",
          clipboardMode = "ENABLED"|"DISABLED",
          ec2InstanceTypes = list(
            "g4dn.xlarge"|"g4dn.2xlarge"|"g4dn.4xlarge"|"g4dn.8xlarge"|"g4dn.12xlarge"|"g4dn.16xlarge"|"g3.4xlarge"|"g3s.xlarge"|"g5.xlarge"|"g5.2xlarge"|"g5.4xlarge"|"g5.8xlarge"|"g5.16xlarge"
          ),
          maxSessionLengthInMinutes = 123,
          maxStoppedSessionLengthInMinutes = 123,
          sessionBackup = list(
            maxBackupsToRetain = 123,
            mode = "AUTOMATIC"|"DEACTIVATED"
          ),
          sessionPersistenceMode = "DEACTIVATED"|"ACTIVATED",
          sessionStorage = list(
            mode = list(
              "UPLOAD"
            ),
            root = list(
              linux = "string",
              windows = "string"
            )
          ),
          streamingImageIds = list(
            "string"
          ),
          volumeConfiguration = list(
            iops = 123,
            size = 123,
            throughput = 123
          )
        ),
        studioComponentIds = list(
          "string"
        ),
        tags = list(
          "string"
        ),
        updatedAt = as.POSIXct(
          "2015-01-01"
        ),
        updatedBy = "string",
        validationResults = list(
          list(
            state = "VALIDATION_NOT_STARTED"|"VALIDATION_IN_PROGRESS"|"VALIDATION_SUCCESS"|"VALIDATION_FAILED"|"VALIDATION_FAILED_INTERNAL_SERVER_ERROR",
            statusCode = "VALIDATION_NOT_STARTED"|"VALIDATION_IN_PROGRESS"|"VALIDATION_SUCCESS"|"VALIDATION_FAILED_INVALID_SUBNET_ROUTE_TABLE_ASSOCIATION"|"VALIDATION_FAILED_SUBNET_NOT_FOUND"|"VALIDATION_FAILED_INVALID_SECURITY_GROUP_ASSOCIATION"|"VALIDATION_FAILED_INVALID_ACTIVE_DIRECTORY"|"VALIDATION_FAILED_UNAUTHORIZED"|"VALIDATION_FAILED_INTERNAL_SERVER_ERROR",
            statusMessage = "string",
            type = "VALIDATE_ACTIVE_DIRECTORY_STUDIO_COMPONENT"|"VALIDATE_SUBNET_ASSOCIATION"|"VALIDATE_NETWORK_ACL_ASSOCIATION"|"VALIDATE_SECURITY_GROUP_ASSOCIATION"
          )
        )
      )
    )

### Request syntax

    svc$get_launch_profile(
      launchProfileId = "string",
      studioId = "string"
    )
