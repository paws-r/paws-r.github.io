<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>gluedatabrew_create_profile_job</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a new job to analyze a dataset and create its data profile

### Description

Creates a new job to analyze a dataset and create its data profile.

### Usage

    gluedatabrew_create_profile_job(DatasetName, EncryptionKeyArn,
      EncryptionMode, Name, LogSubscription, MaxCapacity, MaxRetries,
      OutputLocation, Configuration, ValidationConfigurations, RoleArn, Tags,
      Timeout, JobSample)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="gluedatabrew_create_profile_job_:_DatasetName">DatasetName</code></td>
<td><p>[required] The name of the dataset that this job is to act
upon.</p></td>
</tr>
<tr class="even">
<td><code
id="gluedatabrew_create_profile_job_:_EncryptionKeyArn">EncryptionKeyArn</code></td>
<td><p>The Amazon Resource Name (ARN) of an encryption key that is used
to protect the job.</p></td>
</tr>
<tr class="odd">
<td><code
id="gluedatabrew_create_profile_job_:_EncryptionMode">EncryptionMode</code></td>
<td><p>The encryption mode for the job, which can be one of the
following:</p>
<ul>
<li><p><code>SSE-KMS</code> - <code>SSE-KMS</code> - Server-side
encryption with KMS-managed keys.</p></li>
<li><p><code>SSE-S3</code> - Server-side encryption with keys managed by
Amazon S3.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code id="gluedatabrew_create_profile_job_:_Name">Name</code></td>
<td><p>[required] The name of the job to be created. Valid characters
are alphanumeric (A-Z, a-z, 0-9), hyphen (-), period (.), and
space.</p></td>
</tr>
<tr class="odd">
<td><code
id="gluedatabrew_create_profile_job_:_LogSubscription">LogSubscription</code></td>
<td><p>Enables or disables Amazon CloudWatch logging for the job. If
logging is enabled, CloudWatch writes one log stream for each job
run.</p></td>
</tr>
<tr class="even">
<td><code
id="gluedatabrew_create_profile_job_:_MaxCapacity">MaxCapacity</code></td>
<td><p>The maximum number of nodes that DataBrew can use when the job
processes data.</p></td>
</tr>
<tr class="odd">
<td><code
id="gluedatabrew_create_profile_job_:_MaxRetries">MaxRetries</code></td>
<td><p>The maximum number of times to retry the job after a job run
fails.</p></td>
</tr>
<tr class="even">
<td><code
id="gluedatabrew_create_profile_job_:_OutputLocation">OutputLocation</code></td>
<td><p>[required]</p></td>
</tr>
<tr class="odd">
<td><code
id="gluedatabrew_create_profile_job_:_Configuration">Configuration</code></td>
<td><p>Configuration for profile jobs. Used to select columns, do
evaluations, and override default parameters of evaluations. When
configuration is null, the profile job will run with default
settings.</p></td>
</tr>
<tr class="even">
<td><code
id="gluedatabrew_create_profile_job_:_ValidationConfigurations">ValidationConfigurations</code></td>
<td><p>List of validation configurations that are applied to the profile
job.</p></td>
</tr>
<tr class="odd">
<td><code
id="gluedatabrew_create_profile_job_:_RoleArn">RoleArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the Identity and
Access Management (IAM) role to be assumed when DataBrew runs the
job.</p></td>
</tr>
<tr class="even">
<td><code id="gluedatabrew_create_profile_job_:_Tags">Tags</code></td>
<td><p>Metadata tags to apply to this job.</p></td>
</tr>
<tr class="odd">
<td><code
id="gluedatabrew_create_profile_job_:_Timeout">Timeout</code></td>
<td><p>The job's timeout in minutes. A job that attempts to run longer
than this timeout period ends with a status of
<code>TIMEOUT</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="gluedatabrew_create_profile_job_:_JobSample">JobSample</code></td>
<td><p>Sample configuration for profile jobs only. Determines the number
of rows on which the profile job will be executed. If a JobSample value
is not provided, the default value will be used. The default value is
CUSTOM_ROWS for the mode parameter and 20000 for the size
parameter.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Name = "string"
    )

### Request syntax

    svc$create_profile_job(
      DatasetName = "string",
      EncryptionKeyArn = "string",
      EncryptionMode = "SSE-KMS"|"SSE-S3",
      Name = "string",
      LogSubscription = "ENABLE"|"DISABLE",
      MaxCapacity = 123,
      MaxRetries = 123,
      OutputLocation = list(
        Bucket = "string",
        Key = "string",
        BucketOwner = "string"
      ),
      Configuration = list(
        DatasetStatisticsConfiguration = list(
          IncludedStatistics = list(
            "string"
          ),
          Overrides = list(
            list(
              Statistic = "string",
              Parameters = list(
                "string"
              )
            )
          )
        ),
        ProfileColumns = list(
          list(
            Regex = "string",
            Name = "string"
          )
        ),
        ColumnStatisticsConfigurations = list(
          list(
            Selectors = list(
              list(
                Regex = "string",
                Name = "string"
              )
            ),
            Statistics = list(
              IncludedStatistics = list(
                "string"
              ),
              Overrides = list(
                list(
                  Statistic = "string",
                  Parameters = list(
                    "string"
                  )
                )
              )
            )
          )
        ),
        EntityDetectorConfiguration = list(
          EntityTypes = list(
            "string"
          ),
          AllowedStatistics = list(
            list(
              Statistics = list(
                "string"
              )
            )
          )
        )
      ),
      ValidationConfigurations = list(
        list(
          RulesetArn = "string",
          ValidationMode = "CHECK_ALL"
        )
      ),
      RoleArn = "string",
      Tags = list(
        "string"
      ),
      Timeout = 123,
      JobSample = list(
        Mode = "FULL_DATASET"|"CUSTOM_ROWS",
        Size = 123
      )
    )
