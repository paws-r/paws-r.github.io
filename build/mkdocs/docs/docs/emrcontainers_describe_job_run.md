<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>emrcontainers_describe_job_run</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Displays detailed information about a job run

### Description

Displays detailed information about a job run. A job run is a unit of
work, such as a Spark jar, PySpark script, or SparkSQL query, that you
submit to Amazon EMR on EKS.

### Usage

    emrcontainers_describe_job_run(id, virtualClusterId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="emrcontainers_describe_job_run_:_id">id</code></td>
<td><p>[required] The ID of the job run request.</p></td>
</tr>
<tr class="even">
<td><code
id="emrcontainers_describe_job_run_:_virtualClusterId">virtualClusterId</code></td>
<td><p>[required] The ID of the virtual cluster for which the job run is
submitted.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      jobRun = list(
        id = "string",
        name = "string",
        virtualClusterId = "string",
        arn = "string",
        state = "PENDING"|"SUBMITTED"|"RUNNING"|"FAILED"|"CANCELLED"|"CANCEL_PENDING"|"COMPLETED",
        clientToken = "string",
        executionRoleArn = "string",
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
            persistentAppUI = "ENABLED"|"DISABLED",
            cloudWatchMonitoringConfiguration = list(
              logGroupName = "string",
              logStreamNamePrefix = "string"
            ),
            s3MonitoringConfiguration = list(
              logUri = "string"
            )
          )
        ),
        jobDriver = list(
          sparkSubmitJobDriver = list(
            entryPoint = "string",
            entryPointArguments = list(
              "string"
            ),
            sparkSubmitParameters = "string"
          ),
          sparkSqlJobDriver = list(
            entryPoint = "string",
            sparkSqlParameters = "string"
          )
        ),
        createdAt = as.POSIXct(
          "2015-01-01"
        ),
        createdBy = "string",
        finishedAt = as.POSIXct(
          "2015-01-01"
        ),
        stateDetails = "string",
        failureReason = "INTERNAL_ERROR"|"USER_ERROR"|"VALIDATION_ERROR"|"CLUSTER_UNAVAILABLE",
        tags = list(
          "string"
        ),
        retryPolicyConfiguration = list(
          maxAttempts = 123
        ),
        retryPolicyExecution = list(
          currentAttemptCount = 123
        )
      )
    )

### Request syntax

    svc$describe_job_run(
      id = "string",
      virtualClusterId = "string"
    )
