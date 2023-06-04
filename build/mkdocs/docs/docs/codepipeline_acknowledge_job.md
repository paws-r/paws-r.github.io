<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codepipeline_acknowledge_job</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns information about a specified job and whether that job has been received by the job worker

### Description

Returns information about a specified job and whether that job has been
received by the job worker. Used for custom actions only.

### Usage

    codepipeline_acknowledge_job(jobId, nonce)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="codepipeline_acknowledge_job_:_jobId">jobId</code></td>
<td><p>[required] The unique system-generated ID of the job for which
you want to confirm receipt.</p></td>
</tr>
<tr class="even">
<td><code id="codepipeline_acknowledge_job_:_nonce">nonce</code></td>
<td><p>[required] A system-generated random number that CodePipeline
uses to ensure that the job is being worked on by only one job worker.
Get this number from the response of the <code>poll_for_jobs</code>
request that returned this job.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      status = "Created"|"Queued"|"Dispatched"|"InProgress"|"TimedOut"|"Succeeded"|"Failed"
    )

### Request syntax

    svc$acknowledge_job(
      jobId = "string",
      nonce = "string"
    )
