<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>emrcontainers_list_job_runs</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists job runs based on a set of parameters

### Description

Lists job runs based on a set of parameters. A job run is a unit of
work, such as a Spark jar, PySpark script, or SparkSQL query, that you
submit to Amazon EMR on EKS.

### Usage

    emrcontainers_list_job_runs(virtualClusterId, createdBefore,
      createdAfter, name, states, maxResults, nextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="emrcontainers_list_job_runs_:_virtualClusterId">virtualClusterId</code></td>
<td><p>[required] The ID of the virtual cluster for which to list the
job run.</p></td>
</tr>
<tr class="even">
<td><code
id="emrcontainers_list_job_runs_:_createdBefore">createdBefore</code></td>
<td><p>The date and time before which the job runs were
submitted.</p></td>
</tr>
<tr class="odd">
<td><code
id="emrcontainers_list_job_runs_:_createdAfter">createdAfter</code></td>
<td><p>The date and time after which the job runs were
submitted.</p></td>
</tr>
<tr class="even">
<td><code id="emrcontainers_list_job_runs_:_name">name</code></td>
<td><p>The name of the job run.</p></td>
</tr>
<tr class="odd">
<td><code id="emrcontainers_list_job_runs_:_states">states</code></td>
<td><p>The states of the job run.</p></td>
</tr>
<tr class="even">
<td><code
id="emrcontainers_list_job_runs_:_maxResults">maxResults</code></td>
<td><p>The maximum number of job runs that can be listed.</p></td>
</tr>
<tr class="odd">
<td><code
id="emrcontainers_list_job_runs_:_nextToken">nextToken</code></td>
<td><p>The token for the next set of job runs to return.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      jobRuns = list(
        list(
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
      ),
      nextToken = "string"
    )

### Request syntax

    svc$list_job_runs(
      virtualClusterId = "string",
      createdBefore = as.POSIXct(
        "2015-01-01"
      ),
      createdAfter = as.POSIXct(
        "2015-01-01"
      ),
      name = "string",
      states = list(
        "PENDING"|"SUBMITTED"|"RUNNING"|"FAILED"|"CANCELLED"|"CANCEL_PENDING"|"COMPLETED"
      ),
      maxResults = 123,
      nextToken = "string"
    )
