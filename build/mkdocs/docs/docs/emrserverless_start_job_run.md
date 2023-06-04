<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>emrserverless_start_job_run</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Starts a job run

### Description

Starts a job run.

### Usage

    emrserverless_start_job_run(applicationId, clientToken,
      executionRoleArn, jobDriver, configurationOverrides, tags,
      executionTimeoutMinutes, name)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="emrserverless_start_job_run_:_applicationId">applicationId</code></td>
<td><p>[required] The ID of the application on which to run the
job.</p></td>
</tr>
<tr class="even">
<td><code
id="emrserverless_start_job_run_:_clientToken">clientToken</code></td>
<td><p>[required] The client idempotency token of the job run to start.
Its value must be unique for each request.</p></td>
</tr>
<tr class="odd">
<td><code
id="emrserverless_start_job_run_:_executionRoleArn">executionRoleArn</code></td>
<td><p>[required] The execution role ARN for the job run.</p></td>
</tr>
<tr class="even">
<td><code
id="emrserverless_start_job_run_:_jobDriver">jobDriver</code></td>
<td><p>The job driver for the job run.</p></td>
</tr>
<tr class="odd">
<td><code
id="emrserverless_start_job_run_:_configurationOverrides">configurationOverrides</code></td>
<td><p>The configuration overrides for the job run.</p></td>
</tr>
<tr class="even">
<td><code id="emrserverless_start_job_run_:_tags">tags</code></td>
<td><p>The tags assigned to the job run.</p></td>
</tr>
<tr class="odd">
<td><code
id="emrserverless_start_job_run_:_executionTimeoutMinutes">executionTimeoutMinutes</code></td>
<td><p>The maximum duration for the job run to run. If the job run runs
beyond this duration, it will be automatically cancelled.</p></td>
</tr>
<tr class="even">
<td><code id="emrserverless_start_job_run_:_name">name</code></td>
<td><p>The optional job run name. This doesn't have to be
unique.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      applicationId = "string",
      jobRunId = "string",
      arn = "string"
    )

### Request syntax

    svc$start_job_run(
      applicationId = "string",
      clientToken = "string",
      executionRoleArn = "string",
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
      tags = list(
        "string"
      ),
      executionTimeoutMinutes = 123,
      name = "string"
    )
