<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>backup_describe_copy_job</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns metadata associated with creating a copy of a resource

### Description

Returns metadata associated with creating a copy of a resource.

### Usage

    backup_describe_copy_job(CopyJobId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="backup_describe_copy_job_:_CopyJobId">CopyJobId</code></td>
<td><p>[required] Uniquely identifies a copy job.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      CopyJob = list(
        AccountId = "string",
        CopyJobId = "string",
        SourceBackupVaultArn = "string",
        SourceRecoveryPointArn = "string",
        DestinationBackupVaultArn = "string",
        DestinationRecoveryPointArn = "string",
        ResourceArn = "string",
        CreationDate = as.POSIXct(
          "2015-01-01"
        ),
        CompletionDate = as.POSIXct(
          "2015-01-01"
        ),
        State = "CREATED"|"RUNNING"|"COMPLETED"|"FAILED"|"PARTIAL",
        StatusMessage = "string",
        BackupSizeInBytes = 123,
        IamRoleArn = "string",
        CreatedBy = list(
          BackupPlanId = "string",
          BackupPlanArn = "string",
          BackupPlanVersion = "string",
          BackupRuleId = "string"
        ),
        ResourceType = "string",
        ParentJobId = "string",
        IsParent = TRUE|FALSE,
        CompositeMemberIdentifier = "string",
        NumberOfChildJobs = 123,
        ChildJobsInState = list(
          123
        ),
        ResourceName = "string"
      )
    )

### Request syntax

    svc$describe_copy_job(
      CopyJobId = "string"
    )
