<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codepipeline_acknowledge_third_party_job</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Confirms a job worker has received the specified job

### Description

Confirms a job worker has received the specified job. Used for partner
actions only.

### Usage

    codepipeline_acknowledge_third_party_job(jobId, nonce, clientToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="codepipeline_acknowledge_third_party_job_:_jobId">jobId</code></td>
<td><p>[required] The unique system-generated ID of the job.</p></td>
</tr>
<tr class="even">
<td><code
id="codepipeline_acknowledge_third_party_job_:_nonce">nonce</code></td>
<td><p>[required] A system-generated random number that CodePipeline
uses to ensure that the job is being worked on by only one job worker.
Get this number from the response to a
<code>get_third_party_job_details</code> request.</p></td>
</tr>
<tr class="odd">
<td><code
id="codepipeline_acknowledge_third_party_job_:_clientToken">clientToken</code></td>
<td><p>[required] The clientToken portion of the clientId and
clientToken pair used to verify that the calling entity is allowed
access to the job and its details.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      status = "Created"|"Queued"|"Dispatched"|"InProgress"|"TimedOut"|"Succeeded"|"Failed"
    )

### Request syntax

    svc$acknowledge_third_party_job(
      jobId = "string",
      nonce = "string",
      clientToken = "string"
    )
