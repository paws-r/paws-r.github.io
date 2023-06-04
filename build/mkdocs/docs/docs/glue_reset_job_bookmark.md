<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>glue_reset_job_bookmark</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Resets a bookmark entry

### Description

Resets a bookmark entry.

For more information about enabling and using job bookmarks, see:

-   [Tracking processed data using job
    bookmarks](https://docs.aws.amazon.com/glue/latest/dg/monitor-continuations.html)

-   [Job parameters used by
    Glue](https://docs.aws.amazon.com/glue/latest/dg/aws-glue-programming-etl-glue-arguments.html)

-   [Job
    structure](https://docs.aws.amazon.com/glue/latest/dg/aws-glue-api-jobs-job.html#aws-glue-api-jobs-job-Job)

### Usage

    glue_reset_job_bookmark(JobName, RunId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="glue_reset_job_bookmark_:_JobName">JobName</code></td>
<td><p>[required] The name of the job in question.</p></td>
</tr>
<tr class="even">
<td><code id="glue_reset_job_bookmark_:_RunId">RunId</code></td>
<td><p>The unique run identifier associated with this job run.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      JobBookmarkEntry = list(
        JobName = "string",
        Version = 123,
        Run = 123,
        Attempt = 123,
        PreviousRunId = "string",
        RunId = "string",
        JobBookmark = "string"
      )
    )

### Request syntax

    svc$reset_job_bookmark(
      JobName = "string",
      RunId = "string"
    )
