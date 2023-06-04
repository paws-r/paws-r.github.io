<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>emrcontainers_list_job_templates</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists job templates based on a set of parameters

### Description

Lists job templates based on a set of parameters. Job template stores
values of StartJobRun API request in a template and can be used to start
a job run. Job template allows two use cases: avoid repeating recurring
StartJobRun API request values, enforcing certain values in StartJobRun
API request.

### Usage

    emrcontainers_list_job_templates(createdAfter, createdBefore,
      maxResults, nextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="emrcontainers_list_job_templates_:_createdAfter">createdAfter</code></td>
<td><p>The date and time after which the job templates were
created.</p></td>
</tr>
<tr class="even">
<td><code
id="emrcontainers_list_job_templates_:_createdBefore">createdBefore</code></td>
<td><p>The date and time before which the job templates were
created.</p></td>
</tr>
<tr class="odd">
<td><code
id="emrcontainers_list_job_templates_:_maxResults">maxResults</code></td>
<td><p>The maximum number of job templates that can be listed.</p></td>
</tr>
<tr class="even">
<td><code
id="emrcontainers_list_job_templates_:_nextToken">nextToken</code></td>
<td><p>The token for the next set of job templates to return.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      templates = list(
        list(
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
      ),
      nextToken = "string"
    )

### Request syntax

    svc$list_job_templates(
      createdAfter = as.POSIXct(
        "2015-01-01"
      ),
      createdBefore = as.POSIXct(
        "2015-01-01"
      ),
      maxResults = 123,
      nextToken = "string"
    )
