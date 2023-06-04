<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>backup_create_backup_plan</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a backup plan using a backup plan name and backup rules

### Description

Creates a backup plan using a backup plan name and backup rules. A
backup plan is a document that contains information that Backup uses to
schedule tasks that create recovery points for resources.

If you call `create_backup_plan` with a plan that already exists, you
receive an `AlreadyExistsException` exception.

### Usage

    backup_create_backup_plan(BackupPlan, BackupPlanTags, CreatorRequestId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="backup_create_backup_plan_:_BackupPlan">BackupPlan</code></td>
<td><p>[required] Specifies the body of a backup plan. Includes a
<code>BackupPlanName</code> and one or more sets of
<code>Rules</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="backup_create_backup_plan_:_BackupPlanTags">BackupPlanTags</code></td>
<td><p>To help organize your resources, you can assign your own metadata
to the resources that you create. Each tag is a key-value pair. The
specified tags are assigned to all backups created with this
plan.</p></td>
</tr>
<tr class="odd">
<td><code
id="backup_create_backup_plan_:_CreatorRequestId">CreatorRequestId</code></td>
<td><p>Identifies the request and allows failed requests to be retried
without the risk of running the operation twice. If the request includes
a <code>CreatorRequestId</code> that matches an existing backup plan,
that plan is returned. This parameter is optional.</p>
<p>If used, this parameter must contain 1 to 50 alphanumeric or '-_.'
characters.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      BackupPlanId = "string",
      BackupPlanArn = "string",
      CreationDate = as.POSIXct(
        "2015-01-01"
      ),
      VersionId = "string",
      AdvancedBackupSettings = list(
        list(
          ResourceType = "string",
          BackupOptions = list(
            "string"
          )
        )
      )
    )

### Request syntax

    svc$create_backup_plan(
      BackupPlan = list(
        BackupPlanName = "string",
        Rules = list(
          list(
            RuleName = "string",
            TargetBackupVaultName = "string",
            ScheduleExpression = "string",
            StartWindowMinutes = 123,
            CompletionWindowMinutes = 123,
            Lifecycle = list(
              MoveToColdStorageAfterDays = 123,
              DeleteAfterDays = 123
            ),
            RecoveryPointTags = list(
              "string"
            ),
            CopyActions = list(
              list(
                Lifecycle = list(
                  MoveToColdStorageAfterDays = 123,
                  DeleteAfterDays = 123
                ),
                DestinationBackupVaultArn = "string"
              )
            ),
            EnableContinuousBackup = TRUE|FALSE
          )
        ),
        AdvancedBackupSettings = list(
          list(
            ResourceType = "string",
            BackupOptions = list(
              "string"
            )
          )
        )
      ),
      BackupPlanTags = list(
        "string"
      ),
      CreatorRequestId = "string"
    )
