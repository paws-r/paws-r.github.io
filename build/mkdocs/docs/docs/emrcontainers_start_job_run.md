<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>emrcontainers_start_job_run</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Starts a job run

### Description

Starts a job run. A job run is a unit of work, such as a Spark jar,
PySpark script, or SparkSQL query, that you submit to Amazon EMR on EKS.

### Usage

    emrcontainers_start_job_run(name, virtualClusterId, clientToken,
      executionRoleArn, releaseLabel, jobDriver, configurationOverrides, tags,
      jobTemplateId, jobTemplateParameters, retryPolicyConfiguration)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="emrcontainers_start_job_run_:_name">name</code></td>
<td><p>The name of the job run.</p></td>
</tr>
<tr class="even">
<td><code
id="emrcontainers_start_job_run_:_virtualClusterId">virtualClusterId</code></td>
<td><p>[required] The virtual cluster ID for which the job run request
is submitted.</p></td>
</tr>
<tr class="odd">
<td><code
id="emrcontainers_start_job_run_:_clientToken">clientToken</code></td>
<td><p>[required] The client idempotency token of the job run
request.</p></td>
</tr>
<tr class="even">
<td><code
id="emrcontainers_start_job_run_:_executionRoleArn">executionRoleArn</code></td>
<td><p>The execution role ARN for the job run.</p></td>
</tr>
<tr class="odd">
<td><code
id="emrcontainers_start_job_run_:_releaseLabel">releaseLabel</code></td>
<td><p>The Amazon EMR release version to use for the job run.</p></td>
</tr>
<tr class="even">
<td><code
id="emrcontainers_start_job_run_:_jobDriver">jobDriver</code></td>
<td><p>The job driver for the job run.</p></td>
</tr>
<tr class="odd">
<td><code
id="emrcontainers_start_job_run_:_configurationOverrides">configurationOverrides</code></td>
<td><p>The configuration overrides for the job run.</p></td>
</tr>
<tr class="even">
<td><code id="emrcontainers_start_job_run_:_tags">tags</code></td>
<td><p>The tags assigned to job runs.</p></td>
</tr>
<tr class="odd">
<td><code
id="emrcontainers_start_job_run_:_jobTemplateId">jobTemplateId</code></td>
<td><p>The job template ID to be used to start the job run.</p></td>
</tr>
<tr class="even">
<td><code
id="emrcontainers_start_job_run_:_jobTemplateParameters">jobTemplateParameters</code></td>
<td><p>The values of job template parameters to start a job
run.</p></td>
</tr>
<tr class="odd">
<td><code
id="emrcontainers_start_job_run_:_retryPolicyConfiguration">retryPolicyConfiguration</code></td>
<td><p>The retry policy configuration for the job run.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      id = "string",
      name = "string",
      arn = "string",
      virtualClusterId = "string"
    )

### Request syntax

    svc$start_job_run(
      name = "string",
      virtualClusterId = "string",
      clientToken = "string",
      executionRoleArn = "string",
      releaseLabel = "string",
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
      tags = list(
        "string"
      ),
      jobTemplateId = "string",
      jobTemplateParameters = list(
        "string"
      ),
      retryPolicyConfiguration = list(
        maxAttempts = 123
      )
    )
