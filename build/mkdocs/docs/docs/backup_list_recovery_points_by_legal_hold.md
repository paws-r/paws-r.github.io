<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>backup_list_recovery_points_by_legal_hold</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## This action returns recovery point ARNs (Amazon Resource Names) of the specified legal hold

### Description

This action returns recovery point ARNs (Amazon Resource Names) of the
specified legal hold.

### Usage

    backup_list_recovery_points_by_legal_hold(LegalHoldId, NextToken,
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
id="backup_list_recovery_points_by_legal_hold_:_LegalHoldId">LegalHoldId</code></td>
<td><p>[required] This is the ID of the legal hold.</p></td>
</tr>
<tr class="even">
<td><code
id="backup_list_recovery_points_by_legal_hold_:_NextToken">NextToken</code></td>
<td><p>This is the next item following a partial list of returned
resources. For example, if a request is made to return
<code>maxResults</code> number of resources, <code>NextToken</code>
allows you to return more items in your list starting at the location
pointed to by the next token.</p></td>
</tr>
<tr class="odd">
<td><code
id="backup_list_recovery_points_by_legal_hold_:_MaxResults">MaxResults</code></td>
<td><p>This is the maximum number of resource list items to be
returned.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      RecoveryPoints = list(
        list(
          RecoveryPointArn = "string",
          ResourceArn = "string",
          ResourceType = "string",
          BackupVaultName = "string"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_recovery_points_by_legal_hold(
      LegalHoldId = "string",
      NextToken = "string",
      MaxResults = 123
    )
