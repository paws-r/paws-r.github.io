<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>backup_list_backup_selections</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns an array containing metadata of the resources associated with the target backup plan

### Description

Returns an array containing metadata of the resources associated with
the target backup plan.

### Usage

    backup_list_backup_selections(BackupPlanId, NextToken, MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="backup_list_backup_selections_:_BackupPlanId">BackupPlanId</code></td>
<td><p>[required] Uniquely identifies a backup plan.</p></td>
</tr>
<tr class="even">
<td><code
id="backup_list_backup_selections_:_NextToken">NextToken</code></td>
<td><p>The next item following a partial list of returned items. For
example, if a request is made to return <code>maxResults</code> number
of items, <code>NextToken</code> allows you to return more items in your
list starting at the location pointed to by the next token.</p></td>
</tr>
<tr class="odd">
<td><code
id="backup_list_backup_selections_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of items to be returned.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      NextToken = "string",
      BackupSelectionsList = list(
        list(
          SelectionId = "string",
          SelectionName = "string",
          BackupPlanId = "string",
          CreationDate = as.POSIXct(
            "2015-01-01"
          ),
          CreatorRequestId = "string",
          IamRoleArn = "string"
        )
      )
    )

### Request syntax

    svc$list_backup_selections(
      BackupPlanId = "string",
      NextToken = "string",
      MaxResults = 123
    )
