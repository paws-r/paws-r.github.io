<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>backup_describe_restore_job</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns metadata associated with a restore job that is specified by a job ID

### Description

Returns metadata associated with a restore job that is specified by a
job ID.

### Usage

    backup_describe_restore_job(RestoreJobId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="backup_describe_restore_job_:_RestoreJobId">RestoreJobId</code></td>
<td><p>[required] Uniquely identifies the job that restores a recovery
point.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      AccountId = "string",
      RestoreJobId = "string",
      RecoveryPointArn = "string",
      CreationDate = as.POSIXct(
        "2015-01-01"
      ),
      CompletionDate = as.POSIXct(
        "2015-01-01"
      ),
      Status = "PENDING"|"RUNNING"|"COMPLETED"|"ABORTED"|"FAILED",
      StatusMessage = "string",
      PercentDone = "string",
      BackupSizeInBytes = 123,
      IamRoleArn = "string",
      ExpectedCompletionTimeMinutes = 123,
      CreatedResourceArn = "string",
      ResourceType = "string"
    )

### Request syntax

    svc$describe_restore_job(
      RestoreJobId = "string"
    )
