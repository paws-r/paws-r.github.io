<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>backup_list_restore_jobs</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a list of jobs that Backup initiated to restore a saved resource, including details about the recovery process

### Description

Returns a list of jobs that Backup initiated to restore a saved
resource, including details about the recovery process.

### Usage

    backup_list_restore_jobs(NextToken, MaxResults, ByAccountId,
      ByCreatedBefore, ByCreatedAfter, ByStatus, ByCompleteBefore,
      ByCompleteAfter)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="backup_list_restore_jobs_:_NextToken">NextToken</code></td>
<td><p>The next item following a partial list of returned items. For
example, if a request is made to return <code>maxResults</code> number
of items, <code>NextToken</code> allows you to return more items in your
list starting at the location pointed to by the next token.</p></td>
</tr>
<tr class="even">
<td><code
id="backup_list_restore_jobs_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of items to be returned.</p></td>
</tr>
<tr class="odd">
<td><code
id="backup_list_restore_jobs_:_ByAccountId">ByAccountId</code></td>
<td><p>The account ID to list the jobs from. Returns only restore jobs
associated with the specified account ID.</p></td>
</tr>
<tr class="even">
<td><code
id="backup_list_restore_jobs_:_ByCreatedBefore">ByCreatedBefore</code></td>
<td><p>Returns only restore jobs that were created before the specified
date.</p></td>
</tr>
<tr class="odd">
<td><code
id="backup_list_restore_jobs_:_ByCreatedAfter">ByCreatedAfter</code></td>
<td><p>Returns only restore jobs that were created after the specified
date.</p></td>
</tr>
<tr class="even">
<td><code id="backup_list_restore_jobs_:_ByStatus">ByStatus</code></td>
<td><p>Returns only restore jobs associated with the specified job
status.</p></td>
</tr>
<tr class="odd">
<td><code
id="backup_list_restore_jobs_:_ByCompleteBefore">ByCompleteBefore</code></td>
<td><p>Returns only copy jobs completed before a date expressed in Unix
format and Coordinated Universal Time (UTC).</p></td>
</tr>
<tr class="even">
<td><code
id="backup_list_restore_jobs_:_ByCompleteAfter">ByCompleteAfter</code></td>
<td><p>Returns only copy jobs completed after a date expressed in Unix
format and Coordinated Universal Time (UTC).</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      RestoreJobs = list(
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
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_restore_jobs(
      NextToken = "string",
      MaxResults = 123,
      ByAccountId = "string",
      ByCreatedBefore = as.POSIXct(
        "2015-01-01"
      ),
      ByCreatedAfter = as.POSIXct(
        "2015-01-01"
      ),
      ByStatus = "PENDING"|"RUNNING"|"COMPLETED"|"ABORTED"|"FAILED",
      ByCompleteBefore = as.POSIXct(
        "2015-01-01"
      ),
      ByCompleteAfter = as.POSIXct(
        "2015-01-01"
      )
    )
