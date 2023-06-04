<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>backup_list_recovery_points_by_backup_vault</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns detailed information about the recovery points stored in a backup vault

### Description

Returns detailed information about the recovery points stored in a
backup vault.

### Usage

    backup_list_recovery_points_by_backup_vault(BackupVaultName, NextToken,
      MaxResults, ByResourceArn, ByResourceType, ByBackupPlanId,
      ByCreatedBefore, ByCreatedAfter, ByParentRecoveryPointArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="backup_list_recovery_points_by_backup_vault_:_BackupVaultName">BackupVaultName</code></td>
<td><p>[required] The name of a logical container where backups are
stored. Backup vaults are identified by names that are unique to the
account used to create them and the Amazon Web Services Region where
they are created. They consist of lowercase letters, numbers, and
hyphens.</p>
<p>Backup vault name might not be available when a supported service
creates the backup.</p></td>
</tr>
<tr class="even">
<td><code
id="backup_list_recovery_points_by_backup_vault_:_NextToken">NextToken</code></td>
<td><p>The next item following a partial list of returned items. For
example, if a request is made to return <code>maxResults</code> number
of items, <code>NextToken</code> allows you to return more items in your
list starting at the location pointed to by the next token.</p></td>
</tr>
<tr class="odd">
<td><code
id="backup_list_recovery_points_by_backup_vault_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of items to be returned.</p></td>
</tr>
<tr class="even">
<td><code
id="backup_list_recovery_points_by_backup_vault_:_ByResourceArn">ByResourceArn</code></td>
<td><p>Returns only recovery points that match the specified resource
Amazon Resource Name (ARN).</p></td>
</tr>
<tr class="odd">
<td><code
id="backup_list_recovery_points_by_backup_vault_:_ByResourceType">ByResourceType</code></td>
<td><p>Returns only recovery points that match the specified resource
type.</p></td>
</tr>
<tr class="even">
<td><code
id="backup_list_recovery_points_by_backup_vault_:_ByBackupPlanId">ByBackupPlanId</code></td>
<td><p>Returns only recovery points that match the specified backup plan
ID.</p></td>
</tr>
<tr class="odd">
<td><code
id="backup_list_recovery_points_by_backup_vault_:_ByCreatedBefore">ByCreatedBefore</code></td>
<td><p>Returns only recovery points that were created before the
specified timestamp.</p></td>
</tr>
<tr class="even">
<td><code
id="backup_list_recovery_points_by_backup_vault_:_ByCreatedAfter">ByCreatedAfter</code></td>
<td><p>Returns only recovery points that were created after the
specified timestamp.</p></td>
</tr>
<tr class="odd">
<td><code
id="backup_list_recovery_points_by_backup_vault_:_ByParentRecoveryPointArn">ByParentRecoveryPointArn</code></td>
<td><p>This returns only recovery points that match the specified parent
(composite) recovery point Amazon Resource Name (ARN).</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      NextToken = "string",
      RecoveryPoints = list(
        list(
          RecoveryPointArn = "string",
          BackupVaultName = "string",
          BackupVaultArn = "string",
          SourceBackupVaultArn = "string",
          ResourceArn = "string",
          ResourceType = "string",
          CreatedBy = list(
            BackupPlanId = "string",
            BackupPlanArn = "string",
            BackupPlanVersion = "string",
            BackupRuleId = "string"
          ),
          IamRoleArn = "string",
          Status = "COMPLETED"|"PARTIAL"|"DELETING"|"EXPIRED",
          StatusMessage = "string",
          CreationDate = as.POSIXct(
            "2015-01-01"
          ),
          CompletionDate = as.POSIXct(
            "2015-01-01"
          ),
          BackupSizeInBytes = 123,
          CalculatedLifecycle = list(
            MoveToColdStorageAt = as.POSIXct(
              "2015-01-01"
            ),
            DeleteAt = as.POSIXct(
              "2015-01-01"
            )
          ),
          Lifecycle = list(
            MoveToColdStorageAfterDays = 123,
            DeleteAfterDays = 123
          ),
          EncryptionKeyArn = "string",
          IsEncrypted = TRUE|FALSE,
          LastRestoreTime = as.POSIXct(
            "2015-01-01"
          ),
          ParentRecoveryPointArn = "string",
          CompositeMemberIdentifier = "string",
          IsParent = TRUE|FALSE,
          ResourceName = "string"
        )
      )
    )

### Request syntax

    svc$list_recovery_points_by_backup_vault(
      BackupVaultName = "string",
      NextToken = "string",
      MaxResults = 123,
      ByResourceArn = "string",
      ByResourceType = "string",
      ByBackupPlanId = "string",
      ByCreatedBefore = as.POSIXct(
        "2015-01-01"
      ),
      ByCreatedAfter = as.POSIXct(
        "2015-01-01"
      ),
      ByParentRecoveryPointArn = "string"
    )
