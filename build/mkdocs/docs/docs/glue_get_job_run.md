<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>glue_get_job_run</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves the metadata for a given job run

### Description

Retrieves the metadata for a given job run.

### Usage

    glue_get_job_run(JobName, RunId, PredecessorsIncluded)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="glue_get_job_run_:_JobName">JobName</code></td>
<td><p>[required] Name of the job definition being run.</p></td>
</tr>
<tr class="even">
<td><code id="glue_get_job_run_:_RunId">RunId</code></td>
<td><p>[required] The ID of the job run.</p></td>
</tr>
<tr class="odd">
<td><code
id="glue_get_job_run_:_PredecessorsIncluded">PredecessorsIncluded</code></td>
<td><p>True if a list of predecessor runs should be returned.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      JobRun = list(
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
    )

### Request syntax

    svc$get_job_run(
      JobName = "string",
      RunId = "string",
      PredecessorsIncluded = TRUE|FALSE
    )
