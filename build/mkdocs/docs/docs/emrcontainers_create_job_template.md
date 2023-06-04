<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>emrcontainers_create_job_template</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a job template

### Description

Creates a job template. Job template stores values of StartJobRun API
request in a template and can be used to start a job run. Job template
allows two use cases: avoid repeating recurring StartJobRun API request
values, enforcing certain values in StartJobRun API request.

### Usage

    emrcontainers_create_job_template(name, clientToken, jobTemplateData,
      tags, kmsKeyArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="emrcontainers_create_job_template_:_name">name</code></td>
<td><p>[required] The specified name of the job template.</p></td>
</tr>
<tr class="even">
<td><code
id="emrcontainers_create_job_template_:_clientToken">clientToken</code></td>
<td><p>[required] The client token of the job template.</p></td>
</tr>
<tr class="odd">
<td><code
id="emrcontainers_create_job_template_:_jobTemplateData">jobTemplateData</code></td>
<td><p>[required] The job template data which holds values of
StartJobRun API request.</p></td>
</tr>
<tr class="even">
<td><code id="emrcontainers_create_job_template_:_tags">tags</code></td>
<td><p>The tags that are associated with the job template.</p></td>
</tr>
<tr class="odd">
<td><code
id="emrcontainers_create_job_template_:_kmsKeyArn">kmsKeyArn</code></td>
<td><p>The KMS key ARN used to encrypt the job template.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      id = "string",
      name = "string",
      arn = "string",
      createdAt = as.POSIXct(
        "2015-01-01"
      )
    )

### Request syntax

    svc$create_job_template(
      name = "string",
      clientToken = "string",
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
      tags = list(
        "string"
      ),
      kmsKeyArn = "string"
    )
