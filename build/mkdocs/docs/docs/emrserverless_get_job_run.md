<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>emrserverless_get_job_run</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Displays detailed information about a job run

### Description

Displays detailed information about a job run.

### Usage

    emrserverless_get_job_run(applicationId, jobRunId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="emrserverless_get_job_run_:_applicationId">applicationId</code></td>
<td><p>[required] The ID of the application on which the job run is
submitted.</p></td>
</tr>
<tr class="even">
<td><code id="emrserverless_get_job_run_:_jobRunId">jobRunId</code></td>
<td><p>[required] The ID of the job run.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      jobRun = list(
        applicationId = "string",
        jobRunId = "string",
        name = "string",
        arn = "string",
        createdBy = "string",
        createdAt = as.POSIXct(
          "2015-01-01"
        ),
        updatedAt = as.POSIXct(
          "2015-01-01"
        ),
        executionRole = "string",
        state = "SUBMITTED"|"PENDING"|"SCHEDULED"|"RUNNING"|"SUCCESS"|"FAILED"|"CANCELLING"|"CANCELLED",
        stateDetails = "string",
        releaseLabel = "string",
        configurationOverrides = list(
          applicationConfiguration = list(
            list(
              classification = "string",
              properties = list(
                "string"
              ),
              configurations = list()
            )
          ),
          monitoringConfiguration = list(
            s3MonitoringConfiguration = list(
              logUri = "string",
              encryptionKeyArn = "string"
            ),
            managedPersistenceMonitoringConfiguration = list(
              enabled = TRUE|FALSE,
              encryptionKeyArn = "string"
            )
          )
        ),
        jobDriver = list(
          sparkSubmit = list(
            entryPoint = "string",
            entryPointArguments = list(
              "string"
            ),
            sparkSubmitParameters = "string"
          ),
          hive = list(
            query = "string",
            initQueryFile = "string",
            parameters = "string"
          )
        ),
        tags = list(
          "string"
        ),
        totalResourceUtilization = list(
          vCPUHour = 123.0,
          memoryGBHour = 123.0,
          storageGBHour = 123.0
        ),
        networkConfiguration = list(
          subnetIds = list(
            "string"
          ),
          securityGroupIds = list(
            "string"
          )
        ),
        totalExecutionDurationSeconds = 123,
        executionTimeoutMinutes = 123,
        billedResourceUtilization = list(
          vCPUHour = 123.0,
          memoryGBHour = 123.0,
          storageGBHour = 123.0
        )
      )
    )

### Request syntax

    svc$get_job_run(
      applicationId = "string",
      jobRunId = "string"
    )
