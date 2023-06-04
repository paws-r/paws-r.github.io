<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>synthetics_create_canary</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a canary

### Description

Creates a canary. Canaries are scripts that monitor your endpoints and
APIs from the outside-in. Canaries help you check the availability and
latency of your web services and troubleshoot anomalies by investigating
load time data, screenshots of the UI, logs, and metrics. You can set up
a canary to run continuously or just once.

Do not use `create_canary` to modify an existing canary. Use
`update_canary` instead.

To create canaries, you must have the `CloudWatchSyntheticsFullAccess`
policy. If you are creating a new IAM role for the canary, you also need
the `iam:CreateRole`, `iam:CreatePolicy` and `iam:AttachRolePolicy`
permissions. For more information, see [Necessary Roles and
Permissions](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch_Synthetics_Canaries_Roles.html).

Do not include secrets or proprietary information in your canary names.
The canary name makes up part of the Amazon Resource Name (ARN) for the
canary, and the ARN is included in outbound calls over the internet. For
more information, see [Security Considerations for Synthetics
Canaries](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/servicelens_canaries_security.html).

### Usage

    synthetics_create_canary(Name, Code, ArtifactS3Location,
      ExecutionRoleArn, Schedule, RunConfig, SuccessRetentionPeriodInDays,
      FailureRetentionPeriodInDays, RuntimeVersion, VpcConfig, Tags,
      ArtifactConfig)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="synthetics_create_canary_:_Name">Name</code></td>
<td><p>[required] The name for this canary. Be sure to give it a
descriptive name that distinguishes it from other canaries in your
account.</p>
<p>Do not include secrets or proprietary information in your canary
names. The canary name makes up part of the canary ARN, and the ARN is
included in outbound calls over the internet. For more information, see
<a
href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/servicelens_canaries_security.html">Security
Considerations for Synthetics Canaries</a>.</p></td>
</tr>
<tr class="even">
<td><code id="synthetics_create_canary_:_Code">Code</code></td>
<td><p>[required] A structure that includes the entry point from which
the canary should start running your script. If the script is stored in
an S3 bucket, the bucket name, key, and version are also
included.</p></td>
</tr>
<tr class="odd">
<td><code
id="synthetics_create_canary_:_ArtifactS3Location">ArtifactS3Location</code></td>
<td><p>[required] The location in Amazon S3 where Synthetics stores
artifacts from the test runs of this canary. Artifacts include the log
file, screenshots, and HAR files. The name of the S3 bucket can't
include a period (.).</p></td>
</tr>
<tr class="even">
<td><code
id="synthetics_create_canary_:_ExecutionRoleArn">ExecutionRoleArn</code></td>
<td><p>[required] The ARN of the IAM role to be used to run the canary.
This role must already exist, and must include
<code>lambda.amazonaws.com</code> as a principal in the trust policy.
The role must also have the following permissions:</p>
<ul>
<li><p><code>s3:PutObject</code></p></li>
<li><p><code>s3:GetBucketLocation</code></p></li>
<li><p><code>s3:ListAllMyBuckets</code></p></li>
<li><p><code>cloudwatch:PutMetricData</code></p></li>
<li><p><code>logs:CreateLogGroup</code></p></li>
<li><p><code>logs:CreateLogStream</code></p></li>
<li><p><code>logs:PutLogEvents</code></p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code id="synthetics_create_canary_:_Schedule">Schedule</code></td>
<td><p>[required] A structure that contains information about how often
the canary is to run and when these test runs are to stop.</p></td>
</tr>
<tr class="even">
<td><code
id="synthetics_create_canary_:_RunConfig">RunConfig</code></td>
<td><p>A structure that contains the configuration for individual canary
runs, such as timeout value and environment variables.</p>
<p>The environment variables keys and values are not encrypted. Do not
store sensitive information in this field.</p></td>
</tr>
<tr class="odd">
<td><code
id="synthetics_create_canary_:_SuccessRetentionPeriodInDays">SuccessRetentionPeriodInDays</code></td>
<td><p>The number of days to retain data about successful runs of this
canary. If you omit this field, the default of 31 days is used. The
valid range is 1 to 455 days.</p></td>
</tr>
<tr class="even">
<td><code
id="synthetics_create_canary_:_FailureRetentionPeriodInDays">FailureRetentionPeriodInDays</code></td>
<td><p>The number of days to retain data about failed runs of this
canary. If you omit this field, the default of 31 days is used. The
valid range is 1 to 455 days.</p></td>
</tr>
<tr class="odd">
<td><code
id="synthetics_create_canary_:_RuntimeVersion">RuntimeVersion</code></td>
<td><p>[required] Specifies the runtime version to use for the canary.
For a list of valid runtime versions and more information about runtime
versions, see <a
href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch_Synthetics_Canaries_Library.html">Canary
Runtime Versions</a>.</p></td>
</tr>
<tr class="even">
<td><code
id="synthetics_create_canary_:_VpcConfig">VpcConfig</code></td>
<td><p>If this canary is to test an endpoint in a VPC, this structure
contains information about the subnet and security groups of the VPC
endpoint. For more information, see <a
href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch_Synthetics_Canaries_VPC.html">Running
a Canary in a VPC</a>.</p></td>
</tr>
<tr class="odd">
<td><code id="synthetics_create_canary_:_Tags">Tags</code></td>
<td><p>A list of key-value pairs to associate with the canary. You can
associate as many as 50 tags with a canary.</p>
<p>Tags can help you organize and categorize your resources. You can
also use them to scope user permissions, by granting a user permission
to access or change only the resources that have certain tag
values.</p></td>
</tr>
<tr class="even">
<td><code
id="synthetics_create_canary_:_ArtifactConfig">ArtifactConfig</code></td>
<td><p>A structure that contains the configuration for canary artifacts,
including the encryption-at-rest settings for artifacts that the canary
uploads to Amazon S3.</p></td>
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

    svc$create_canary(
      Name = "string",
      Code = list(
        S3Bucket = "string",
        S3Key = "string",
        S3Version = "string",
        ZipFile = raw,
        Handler = "string"
      ),
      ArtifactS3Location = "string",
      ExecutionRoleArn = "string",
      Schedule = list(
        Expression = "string",
        DurationInSeconds = 123
      ),
      RunConfig = list(
        TimeoutInSeconds = 123,
        MemoryInMB = 123,
        ActiveTracing = TRUE|FALSE,
        EnvironmentVariables = list(
          "string"
        )
      ),
      SuccessRetentionPeriodInDays = 123,
      FailureRetentionPeriodInDays = 123,
      RuntimeVersion = "string",
      VpcConfig = list(
        SubnetIds = list(
          "string"
        ),
        SecurityGroupIds = list(
          "string"
        )
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
