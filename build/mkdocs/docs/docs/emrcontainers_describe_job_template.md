<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>emrcontainers_describe_job_template</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Displays detailed information about a specified job template

### Description

Displays detailed information about a specified job template. Job
template stores values of StartJobRun API request in a template and can
be used to start a job run. Job template allows two use cases: avoid
repeating recurring StartJobRun API request values, enforcing certain
values in StartJobRun API request.

### Usage

    emrcontainers_describe_job_template(id)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="emrcontainers_describe_job_template_:_id">id</code></td>
<td><p>[required] The ID of the job template that will be
described.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      jobTemplate = list(
        name = "string",
        id = "string",
        arn = "string",
        createdAt = as.POSIXct(
          "2015-01-01"
        ),
        createdBy = "string",
        tags = list(
          "string"
        ),
        jobTemplateData = list(
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
              persistentAppUI = "string",
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
          parameterConfiguration = list(
            list(
              type = "NUMBER"|"STRING",
              defaultValue = "string"
            )
          ),
          jobTags = list(
            "string"
          )
        ),
        kmsKeyArn = "string",
        decryptionError = "string"
      )
    )

### Request syntax

    svc$describe_job_template(
      id = "string"
    )
