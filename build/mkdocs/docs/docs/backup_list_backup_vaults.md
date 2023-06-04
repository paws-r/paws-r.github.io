<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>backup_list_backup_vaults</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a list of recovery point storage containers along with information about them

### Description

Returns a list of recovery point storage containers along with
information about them.

### Usage

    backup_list_backup_vaults(NextToken, MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="backup_list_backup_vaults_:_NextToken">NextToken</code></td>
<td><p>The next item following a partial list of returned items. For
example, if a request is made to return <code>maxResults</code> number
of items, <code>NextToken</code> allows you to return more items in your
list starting at the location pointed to by the next token.</p></td>
</tr>
<tr class="even">
<td><code
id="backup_list_backup_vaults_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of items to be returned.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      BackupVaultList = list(
        list(
          BackupVaultName = "string",
          BackupVaultArn = "string",
          CreationDate = as.POSIXct(
            "2015-01-01"
          ),
          EncryptionKeyArn = "string",
          CreatorRequestId = "string",
          NumberOfRecoveryPoints = 123,
          Locked = TRUE|FALSE,
          MinRetentionDays = 123,
          MaxRetentionDays = 123,
          LockDate = as.POSIXct(
            "2015-01-01"
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_backup_vaults(
      NextToken = "string",
      MaxResults = 123
    )
