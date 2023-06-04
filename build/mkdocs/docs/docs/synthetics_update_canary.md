<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>synthetics_update_canary</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates the configuration of a canary that has already been created

### Description

Updates the configuration of a canary that has already been created.

You can't use this operation to update the tags of an existing canary.
To change the tags of an existing canary, use `tag_resource`.

### Usage

    synthetics_update_canary(Name, Code, ExecutionRoleArn, RuntimeVersion,
      Schedule, RunConfig, SuccessRetentionPeriodInDays,
      FailureRetentionPeriodInDays, VpcConfig, VisualReference,
      ArtifactS3Location, ArtifactConfig)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="synthetics_update_canary_:_Name">Name</code></td>
<td><p>[required] The name of the canary that you want to update. To
find the names of your canaries, use <code>describe_canaries</code>.</p>
<p>You cannot change the name of a canary that has already been
created.</p></td>
</tr>
<tr class="even">
<td><code id="synthetics_update_canary_:_Code">Code</code></td>
<td><p>A structure that includes the entry point from which the canary
should start running your script. If the script is stored in an S3
bucket, the bucket name, key, and version are also included.</p></td>
</tr>
<tr class="odd">
<td><code
id="synthetics_update_canary_:_ExecutionRoleArn">ExecutionRoleArn</code></td>
<td><p>The ARN of the IAM role to be used to run the canary. This role
must already exist, and must include <code>lambda.amazonaws.com</code>
as a principal in the trust policy. The role must also have the
following permissions:</p>
<ul>
<li><p><code>s3:PutObject</code></p></li>
<li><p><code>s3:GetBucketLocation</code></p></li>
<li><p><code>s3:ListAllMyBuckets</code></p></li>
<li><p><code>cloudwatch:PutMetricData</code></p></li>
<li><p><code>logs:CreateLogGroup</code></p></li>
<li><p><code>logs:CreateLogStream</code></p></li>
<li><p><code>logs:CreateLogStream</code></p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="synthetics_update_canary_:_RuntimeVersion">RuntimeVersion</code></td>
<td><p>Specifies the runtime version to use for the canary. For a list
of valid runtime versions and for more information about runtime
versions, see <a
href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch_Synthetics_Canaries_Library.html">Canary
Runtime Versions</a>.</p></td>
</tr>
<tr class="odd">
<td><code id="synthetics_update_canary_:_Schedule">Schedule</code></td>
<td><p>A structure that contains information about how often the canary
is to run, and when these runs are to stop.</p></td>
</tr>
<tr class="even">
<td><code
id="synthetics_update_canary_:_RunConfig">RunConfig</code></td>
<td><p>A structure that contains the timeout value that is used for each
individual run of the canary.</p>
<p>The environment variables keys and values are not encrypted. Do not
store sensitive information in this field.</p></td>
</tr>
<tr class="odd">
<td><code
id="synthetics_update_canary_:_SuccessRetentionPeriodInDays">SuccessRetentionPeriodInDays</code></td>
<td><p>The number of days to retain data about successful runs of this
canary.</p></td>
</tr>
<tr class="even">
<td><code
id="synthetics_update_canary_:_FailureRetentionPeriodInDays">FailureRetentionPeriodInDays</code></td>
<td><p>The number of days to retain data about failed runs of this
canary.</p></td>
</tr>
<tr class="odd">
<td><code
id="synthetics_update_canary_:_VpcConfig">VpcConfig</code></td>
<td><p>If this canary is to test an endpoint in a VPC, this structure
contains information about the subnet and security groups of the VPC
endpoint. For more information, see <a
href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch_Synthetics_Canaries_VPC.html">Running
a Canary in a VPC</a>.</p></td>
</tr>
<tr class="even">
<td><code
id="synthetics_update_canary_:_VisualReference">VisualReference</code></td>
<td><p>Defines the screenshots to use as the baseline for comparisons
during visual monitoring comparisons during future runs of this canary.
If you omit this parameter, no changes are made to any baseline
screenshots that the canary might be using already.</p>
<p>Visual monitoring is supported only on canaries running the
<strong>syn-puppeteer-node-3.2</strong> runtime or later. For more
information, see <a
href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/">Visual
monitoring</a> and <a
href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/">Visual
monitoring blueprint</a></p></td>
</tr>
<tr class="odd">
<td><code
id="synthetics_update_canary_:_ArtifactS3Location">ArtifactS3Location</code></td>
<td><p>The location in Amazon S3 where Synthetics stores artifacts from
the test runs of this canary. Artifacts include the log file,
screenshots, and HAR files. The name of the S3 bucket can't include a
period (.).</p></td>
</tr>
<tr class="even">
<td><code
id="synthetics_update_canary_:_ArtifactConfig">ArtifactConfig</code></td>
<td><p>A structure that contains the configuration for canary artifacts,
including the encryption-at-rest settings for artifacts that the canary
uploads to Amazon S3.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$update_canary(
      Name = "string",
      Code = list(
        S3Bucket = "string",
        S3Key = "string",
        S3Version = "string",
        ZipFile = raw,
        Handler = "string"
      ),
      ExecutionRoleArn = "string",
      RuntimeVersion = "string",
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
      VpcConfig = list(
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
      ArtifactS3Location = "string",
      ArtifactConfig = list(
        S3Encryption = list(
          EncryptionMode = "SSE_S3"|"SSE_KMS",
          KmsKeyArn = "string"
        )
      )
    )
