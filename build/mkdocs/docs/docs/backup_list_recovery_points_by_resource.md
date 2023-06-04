<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>backup_list_recovery_points_by_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns detailed information about all the recovery points of the type specified by a resource Amazon Resource Name (ARN)

### Description

Returns detailed information about all the recovery points of the type
specified by a resource Amazon Resource Name (ARN).

For Amazon EFS and Amazon EC2, this action only lists recovery points
created by Backup.

### Usage

    backup_list_recovery_points_by_resource(ResourceArn, NextToken,
      MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="backup_list_recovery_points_by_resource_:_ResourceArn">ResourceArn</code></td>
<td><p>[required] An ARN that uniquely identifies a resource. The format
of the ARN depends on the resource type.</p></td>
</tr>
<tr class="even">
<td><code
id="backup_list_recovery_points_by_resource_:_NextToken">NextToken</code></td>
<td><p>The next item following a partial list of returned items. For
example, if a request is made to return <code>maxResults</code> number
of items, <code>NextToken</code> allows you to return more items in your
list starting at the location pointed to by the next token.</p></td>
</tr>
<tr class="odd">
<td><code
id="backup_list_recovery_points_by_resource_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of items to be returned.</p>
<p>Amazon RDS requires a value of at least 20.</p></td>
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
          CreationDate = as.POSIXct(
            "2015-01-01"
          ),
          Status = "COMPLETED"|"PARTIAL"|"DELETING"|"EXPIRED",
          StatusMessage = "string",
          EncryptionKeyArn = "string",
          BackupSizeBytes = 123,
          BackupVaultName = "string",
          IsParent = TRUE|FALSE,
          ParentRecoveryPointArn = "string",
          ResourceName = "string"
        )
      )
    )

### Request syntax

    svc$list_recovery_points_by_resource(
      ResourceArn = "string",
      NextToken = "string",
      MaxResults = 123
    )
