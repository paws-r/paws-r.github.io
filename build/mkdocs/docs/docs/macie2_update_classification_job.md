<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>macie2_update_classification_job</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Changes the status of a classification job

### Description

Changes the status of a classification job.

### Usage

    macie2_update_classification_job(jobId, jobStatus)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="macie2_update_classification_job_:_jobId">jobId</code></td>
<td><p>[required] The unique identifier for the classification
job.</p></td>
</tr>
<tr class="even">
<td><code
id="macie2_update_classification_job_:_jobStatus">jobStatus</code></td>
<td><p>[required] The new status for the job. Valid values are:</p>
<ul>
<li><p>CANCELLED - Stops the job permanently and cancels it. This value
is valid only if the job's current status is IDLE, PAUSED, RUNNING, or
USER_PAUSED.</p>
<p>If you specify this value and the job's current status is RUNNING,
Amazon Macie immediately begins to stop all processing tasks for the
job. You can't resume or restart a job after you cancel it.</p></li>
<li><p>RUNNING - Resumes the job. This value is valid only if the job's
current status is USER_PAUSED.</p>
<p>If you paused the job while it was actively running and you specify
this value less than 30 days after you paused the job, Macie immediately
resumes processing from the point where you paused the job. Otherwise,
Macie resumes the job according to the schedule and other settings for
the job.</p></li>
<li><p>USER_PAUSED - Pauses the job temporarily. This value is valid
only if the job's current status is IDLE, PAUSED, or RUNNING. If you
specify this value and the job's current status is RUNNING, Macie
immediately begins to pause all processing tasks for the job.</p>
<p>If you pause a one-time job and you don't resume it within 30 days,
the job expires and Macie cancels the job. If you pause a recurring job
when its status is RUNNING and you don't resume it within 30 days, the
job run expires and Macie cancels the run. To check the expiration date,
refer to the UserPausedDetails.jobExpiresAt property.</p></li>
</ul></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$update_classification_job(
      jobId = "string",
      jobStatus = "RUNNING"|"PAUSED"|"CANCELLED"|"COMPLETE"|"IDLE"|"USER_PAUSED"
    )
