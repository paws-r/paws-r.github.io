<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>mwaa_get_environment</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes an Amazon Managed Workflows for Apache Airflow (MWAA) environment

### Description

Describes an Amazon Managed Workflows for Apache Airflow (MWAA)
environment.

### Usage

    mwaa_get_environment(Name)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="mwaa_get_environment_:_Name">Name</code></td>
<td><p>[required] The name of the Amazon MWAA environment. For example,
<code>MyMWAAEnvironment</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Environment = list(
        AirflowConfigurationOptions = list(
          "string"
        ),
        AirflowVersion = "string",
        Arn = "string",
        CreatedAt = as.POSIXct(
          "2015-01-01"
        ),
        DagS3Path = "string",
        EnvironmentClass = "string",
        ExecutionRoleArn = "string",
        KmsKey = "string",
        LastUpdate = list(
          CreatedAt = as.POSIXct(
            "2015-01-01"
          ),
          Error = list(
            ErrorCode = "string",
            ErrorMessage = "string"
          ),
          Source = "string",
          Status = "SUCCESS"|"PENDING"|"FAILED"
        ),
        LoggingConfiguration = list(
          DagProcessingLogs = list(
            CloudWatchLogGroupArn = "string",
            Enabled = TRUE|FALSE,
            LogLevel = "CRITICAL"|"ERROR"|"WARNING"|"INFO"|"DEBUG"
          ),
          SchedulerLogs = list(
            CloudWatchLogGroupArn = "string",
            Enabled = TRUE|FALSE,
            LogLevel = "CRITICAL"|"ERROR"|"WARNING"|"INFO"|"DEBUG"
          ),
          TaskLogs = list(
            CloudWatchLogGroupArn = "string",
            Enabled = TRUE|FALSE,
            LogLevel = "CRITICAL"|"ERROR"|"WARNING"|"INFO"|"DEBUG"
          ),
          WebserverLogs = list(
            CloudWatchLogGroupArn = "string",
            Enabled = TRUE|FALSE,
            LogLevel = "CRITICAL"|"ERROR"|"WARNING"|"INFO"|"DEBUG"
          ),
          WorkerLogs = list(
            CloudWatchLogGroupArn = "string",
            Enabled = TRUE|FALSE,
            LogLevel = "CRITICAL"|"ERROR"|"WARNING"|"INFO"|"DEBUG"
          )
        ),
        MaxWorkers = 123,
        MinWorkers = 123,
        Name = "string",
        NetworkConfiguration = list(
          SecurityGroupIds = list(
            "string"
          ),
          SubnetIds = list(
            "string"
          )
        ),
        PluginsS3ObjectVersion = "string",
        PluginsS3Path = "string",
        RequirementsS3ObjectVersion = "string",
        RequirementsS3Path = "string",
        Schedulers = 123,
        ServiceRoleArn = "string",
        SourceBucketArn = "string",
        StartupScriptS3ObjectVersion = "string",
        StartupScriptS3Path = "string",
        Status = "CREATING"|"CREATE_FAILED"|"AVAILABLE"|"UPDATING"|"DELETING"|"DELETED"|"UNAVAILABLE"|"UPDATE_FAILED",
        Tags = list(
          "string"
        ),
        WebserverAccessMode = "PRIVATE_ONLY"|"PUBLIC_ONLY",
        WebserverUrl = "string",
        WeeklyMaintenanceWindowStart = "string"
      )
    )

### Request syntax

    svc$get_environment(
      Name = "string"
    )
