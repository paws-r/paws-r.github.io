<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>glue_get_job_runs</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves metadata for all runs of a given job definition

### Description

Retrieves metadata for all runs of a given job definition.

### Usage

    glue_get_job_runs(JobName, NextToken, MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="glue_get_job_runs_:_JobName">JobName</code></td>
<td><p>[required] The name of the job definition for which to retrieve
all job runs.</p></td>
</tr>
<tr class="even">
<td><code id="glue_get_job_runs_:_NextToken">NextToken</code></td>
<td><p>A continuation token, if this is a continuation call.</p></td>
</tr>
<tr class="odd">
<td><code id="glue_get_job_runs_:_MaxResults">MaxResults</code></td>
<td><p>The maximum size of the response.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      JobRuns = list(
        list(
          Id = "string",
          Attempt = 123,
          PreviousRunId = "string",
          TriggerName = "string",
          JobName = "string",
          StartedOn = as.POSIXct(
            "2015-01-01"
          ),
          LastModifiedOn = as.POSIXct(
            "2015-01-01"
          ),
          CompletedOn = as.POSIXct(
            "2015-01-01"
          ),
          JobRunState = "STARTING"|"RUNNING"|"STOPPING"|"STOPPED"|"SUCCEEDED"|"FAILED"|"TIMEOUT"|"ERROR"|"WAITING",
          Arguments = list(
            "string"
          ),
          ErrorMessage = "string",
          PredecessorRuns = list(
            list(
              JobName = "string",
              RunId = "string"
            )
          ),
          AllocatedCapacity = 123,
          ExecutionTime = 123,
          Timeout = 123,
          MaxCapacity = 123.0,
          WorkerType = "Standard"|"G.1X"|"G.2X"|"G.025X"|"G.4X"|"G.8X",
          NumberOfWorkers = 123,
          SecurityConfiguration = "string",
          LogGroupName = "string",
          NotificationProperty = list(
            NotifyDelayAfter = 123
          ),
          GlueVersion = "string",
          DPUSeconds = 123.0,
          ExecutionClass = "FLEX"|"STANDARD"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$get_job_runs(
      JobName = "string",
      NextToken = "string",
      MaxResults = 123
    )
