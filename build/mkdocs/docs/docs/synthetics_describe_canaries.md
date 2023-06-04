<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>synthetics_describe_canaries</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## This operation returns a list of the canaries in your account, along with full details about each canary

### Description

This operation returns a list of the canaries in your account, along
with full details about each canary.

This operation supports resource-level authorization using an IAM policy
and the `Names` parameter. If you specify the `Names` parameter, the
operation is successful only if you have authorization to view all the
canaries that you specify in your request. If you do not have permission
to view any of the canaries, the request fails with a 403 response.

You are required to use the `Names` parameter if you are logged on to a
user or role that has an IAM policy that restricts which canaries that
you are allowed to view. For more information, see [Limiting a user to
viewing specific
canaries](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch_Synthetics_Canaries_Restricted.html).

### Usage

    synthetics_describe_canaries(NextToken, MaxResults, Names)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="synthetics_describe_canaries_:_NextToken">NextToken</code></td>
<td><p>A token that indicates that there is more data available. You can
use this token in a subsequent operation to retrieve the next set of
results.</p></td>
</tr>
<tr class="even">
<td><code
id="synthetics_describe_canaries_:_MaxResults">MaxResults</code></td>
<td><p>Specify this parameter to limit how many canaries are returned
each time you use the <code>describe_canaries</code> operation. If you
omit this parameter, the default of 100 is used.</p></td>
</tr>
<tr class="odd">
<td><code id="synthetics_describe_canaries_:_Names">Names</code></td>
<td><p>Use this parameter to return only canaries that match the names
that you specify here. You can specify as many as five canary names.</p>
<p>If you specify this parameter, the operation is successful only if
you have authorization to view all the canaries that you specify in your
request. If you do not have permission to view any of the canaries, the
request fails with a 403 response.</p>
<p>You are required to use this parameter if you are logged on to a user
or role that has an IAM policy that restricts which canaries that you
are allowed to view. For more information, see <a
href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch_Synthetics_Canaries_Restricted.html">Limiting
a user to viewing specific canaries</a>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Canaries = list(
        list(
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
      ),
      NextToken = "string"
    )

### Request syntax

    svc$describe_canaries(
      NextToken = "string",
      MaxResults = 123,
      Names = list(
        "string"
      )
    )
