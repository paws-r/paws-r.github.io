<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>backup_list_backup_plans</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a list of all active backup plans for an authenticated account

### Description

Returns a list of all active backup plans for an authenticated account.
The list contains information such as Amazon Resource Names (ARNs), plan
IDs, creation and deletion dates, version IDs, plan names, and creator
request IDs.

### Usage

    backup_list_backup_plans(NextToken, MaxResults, IncludeDeleted)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="backup_list_backup_plans_:_NextToken">NextToken</code></td>
<td><p>The next item following a partial list of returned items. For
example, if a request is made to return <code>maxResults</code> number
of items, <code>NextToken</code> allows you to return more items in your
list starting at the location pointed to by the next token.</p></td>
</tr>
<tr class="even">
<td><code
id="backup_list_backup_plans_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of items to be returned.</p></td>
</tr>
<tr class="odd">
<td><code
id="backup_list_backup_plans_:_IncludeDeleted">IncludeDeleted</code></td>
<td><p>A Boolean value with a default value of <code>FALSE</code> that
returns deleted backup plans when set to <code>TRUE</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      NextToken = "string",
      BackupPlansList = list(
        list(
          BackupPlanArn = "string",
          BackupPlanId = "string",
          CreationDate = as.POSIXct(
            "2015-01-01"
          ),
          DeletionDate = as.POSIXct(
            "2015-01-01"
          ),
          VersionId = "string",
          BackupPlanName = "string",
          CreatorRequestId = "string",
          LastExecutionDate = as.POSIXct(
            "2015-01-01"
          ),
          AdvancedBackupSettings = list(
            list(
              ResourceType = "string",
              BackupOptions = list(
                "string"
              )
            )
          )
        )
      )
    )

### Request syntax

    svc$list_backup_plans(
      NextToken = "string",
      MaxResults = 123,
      IncludeDeleted = TRUE|FALSE
    )
