<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>backup_describe_backup_job</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns backup job details for the specified BackupJobId

### Description

Returns backup job details for the specified `BackupJobId`.

### Usage

    backup_describe_backup_job(BackupJobId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="backup_describe_backup_job_:_BackupJobId">BackupJobId</code></td>
<td><p>[required] Uniquely identifies a request to Backup to back up a
resource.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      AccountId = "string",
      BackupJobId = "string",
      BackupVaultName = "string",
      BackupVaultArn = "string",
      RecoveryPointArn = "string",
      ResourceArn = "string",
      CreationDate = as.POSIXct(
        "2015-01-01"
      ),
      CompletionDate = as.POSIXct(
        "2015-01-01"
      ),
      State = "CREATED"|"PENDING"|"RUNNING"|"ABORTING"|"ABORTED"|"COMPLETED"|"FAILED"|"EXPIRED"|"PARTIAL",
      StatusMessage = "string",
      PercentDone = "string",
      BackupSizeInBytes = 123,
      IamRoleArn = "string",
      CreatedBy = list(
        BackupPlanId = "string",
        BackupPlanArn = "string",
        BackupPlanVersion = "string",
        BackupRuleId = "string"
      ),
      ResourceType = "string",
      BytesTransferred = 123,
      ExpectedCompletionDate = as.POSIXct(
        "2015-01-01"
      ),
      StartBy = as.POSIXct(
        "2015-01-01"
      ),
      BackupOptions = list(
        "string"
      ),
      BackupType = "string",
      ParentJobId = "string",
      IsParent = TRUE|FALSE,
      NumberOfChildJobs = 123,
      ChildJobsInState = list(
        123
      ),
      ResourceName = "string"
    )

### Request syntax

    svc$describe_backup_job(
      BackupJobId = "string"
    )
