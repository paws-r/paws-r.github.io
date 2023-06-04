<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>synthetics_get_canary</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves complete information about one canary

### Description

Retrieves complete information about one canary. You must specify the
name of the canary that you want. To get a list of canaries and their
names, use `describe_canaries`.

### Usage

    synthetics_get_canary(Name)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="synthetics_get_canary_:_Name">Name</code></td>
<td><p>[required] The name of the canary that you want details
for.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Canary = list(
        Id = "string",
        Name = "string",
        Code = list(
          SourceLocationArn = "string",
          Handler = "string"
        ),
        ExecutionRoleArn = "string",
        Schedule = list(
          Expression = "string",
          DurationInSeconds = 123
        ),
        RunConfig = list(
          TimeoutInSeconds = 123,
          MemoryInMB = 123,
          ActiveTracing = TRUE|FALSE
        ),
        SuccessRetentionPeriodInDays = 123,
        FailureRetentionPeriodInDays = 123,
        Status = list(
          State = "CREATING"|"READY"|"STARTING"|"RUNNING"|"UPDATING"|"STOPPING"|"STOPPED"|"ERROR"|"DELETING",
          StateReason = "string",
          StateReasonCode = "INVALID_PERMISSIONS"|"CREATE_PENDING"|"CREATE_IN_PROGRESS"|"CREATE_FAILED"|"UPDATE_PENDING"|"UPDATE_IN_PROGRESS"|"UPDATE_COMPLETE"|"ROLLBACK_COMPLETE"|"ROLLBACK_FAILED"|"DELETE_IN_PROGRESS"|"DELETE_FAILED"|"SYNC_DELETE_IN_PROGRESS"
        ),
        Timeline = list(
          Created = as.POSIXct(
            "2015-01-01"
          ),
          LastModified = as.POSIXct(
            "2015-01-01"
          ),
          LastStarted = as.POSIXct(
            "2015-01-01"
          ),
          LastStopped = as.POSIXct(
            "2015-01-01"
          )
        ),
        ArtifactS3Location = "string",
        EngineArn = "string",
        RuntimeVersion = "string",
        VpcConfig = list(
          VpcId = "string",
          SubnetIds = list(
            "string"
          ),
          SecurityGroupIds = list(
            "string"
          )
        ),
        VisualReference = list(
          BaseScreenshots = list(
            list(
              ScreenshotName = "string",
              IgnoreCoordinates = list(
                "string"
              )
            )
          ),
          BaseCanaryRunId = "string"
        ),
        Tags = list(
          "string"
        ),
        ArtifactConfig = list(
          S3Encryption = list(
            EncryptionMode = "SSE_S3"|"SSE_KMS",
            KmsKeyArn = "string"
          )
        )
      )
    )

### Request syntax

    svc$get_canary(
      Name = "string"
    )
