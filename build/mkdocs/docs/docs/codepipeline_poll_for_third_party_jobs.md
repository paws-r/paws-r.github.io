<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codepipeline_poll_for_third_party_jobs</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Determines whether there are any third party jobs for a job worker to act on

### Description

Determines whether there are any third party jobs for a job worker to
act on. Used for partner actions only.

When this API is called, CodePipeline returns temporary credentials for
the S3 bucket used to store artifacts for the pipeline, if the action
requires access to that S3 bucket for input or output artifacts.

### Usage

    codepipeline_poll_for_third_party_jobs(actionTypeId, maxBatchSize)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="codepipeline_poll_for_third_party_jobs_:_actionTypeId">actionTypeId</code></td>
<td><p>[required] Represents information about an action type.</p></td>
</tr>
<tr class="even">
<td><code
id="codepipeline_poll_for_third_party_jobs_:_maxBatchSize">maxBatchSize</code></td>
<td><p>The maximum number of jobs to return in a poll for jobs
call.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      jobs = list(
        list(
          clientId = "string",
          jobId = "string"
        )
      )
    )

### Request syntax

    svc$poll_for_third_party_jobs(
      actionTypeId = list(
        category = "Source"|"Build"|"Deploy"|"Test"|"Invoke"|"Approval",
        owner = "AWS"|"ThirdParty"|"Custom",
        provider = "string",
        version = "string"
      ),
      maxBatchSize = 123
    )
