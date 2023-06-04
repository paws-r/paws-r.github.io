<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>backup_list_copy_jobs</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns metadata about your copy jobs

### Description

Returns metadata about your copy jobs.

### Usage

    backup_list_copy_jobs(NextToken, MaxResults, ByResourceArn, ByState,
      ByCreatedBefore, ByCreatedAfter, ByResourceType, ByDestinationVaultArn,
      ByAccountId, ByCompleteBefore, ByCompleteAfter, ByParentJobId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="backup_list_copy_jobs_:_NextToken">NextToken</code></td>
<td><p>The next item following a partial list of returned items. For
example, if a request is made to return maxResults number of items,
NextToken allows you to return more items in your list starting at the
location pointed to by the next token.</p></td>
</tr>
<tr class="even">
<td><code id="backup_list_copy_jobs_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of items to be returned.</p></td>
</tr>
<tr class="odd">
<td><code
id="backup_list_copy_jobs_:_ByResourceArn">ByResourceArn</code></td>
<td><p>Returns only copy jobs that match the specified resource Amazon
Resource Name (ARN).</p></td>
</tr>
<tr class="even">
<td><code id="backup_list_copy_jobs_:_ByState">ByState</code></td>
<td><p>Returns only copy jobs that are in the specified state.</p></td>
</tr>
<tr class="odd">
<td><code
id="backup_list_copy_jobs_:_ByCreatedBefore">ByCreatedBefore</code></td>
<td><p>Returns only copy jobs that were created before the specified
date.</p></td>
</tr>
<tr class="even">
<td><code
id="backup_list_copy_jobs_:_ByCreatedAfter">ByCreatedAfter</code></td>
<td><p>Returns only copy jobs that were created after the specified
date.</p></td>
</tr>
<tr class="odd">
<td><code
id="backup_list_copy_jobs_:_ByResourceType">ByResourceType</code></td>
<td><p>Returns only backup jobs for the specified resources:</p>
<ul>
<li><p><code>Aurora</code> for Amazon Aurora</p></li>
<li><p><code>DocumentDB</code> for Amazon DocumentDB (with MongoDB
compatibility)</p></li>
<li><p><code>DynamoDB</code> for Amazon DynamoDB</p></li>
<li><p><code>EBS</code> for Amazon Elastic Block Store</p></li>
<li><p><code>EC2</code> for Amazon Elastic Compute Cloud</p></li>
<li><p><code>EFS</code> for Amazon Elastic File System</p></li>
<li><p><code>FSx</code> for Amazon FSx</p></li>
<li><p><code>Neptune</code> for Amazon Neptune</p></li>
<li><p><code>RDS</code> for Amazon Relational Database Service</p></li>
<li><p><code style="white-space: pre;">⁠Storage Gateway⁠</code> for
Storage Gateway</p></li>
<li><p><code>S3</code> for Amazon S3</p></li>
<li><p><code>VirtualMachine</code> for virtual machines</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="backup_list_copy_jobs_:_ByDestinationVaultArn">ByDestinationVaultArn</code></td>
<td><p>An Amazon Resource Name (ARN) that uniquely identifies a source
backup vault to copy from; for example,
<code>arn:aws:backup:us-east-1:123456789012:vault:aBackupVault</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="backup_list_copy_jobs_:_ByAccountId">ByAccountId</code></td>
<td><p>The account ID to list the jobs from. Returns only copy jobs
associated with the specified account ID.</p></td>
</tr>
<tr class="even">
<td><code
id="backup_list_copy_jobs_:_ByCompleteBefore">ByCompleteBefore</code></td>
<td><p>Returns only copy jobs completed before a date expressed in Unix
format and Coordinated Universal Time (UTC).</p></td>
</tr>
<tr class="odd">
<td><code
id="backup_list_copy_jobs_:_ByCompleteAfter">ByCompleteAfter</code></td>
<td><p>Returns only copy jobs completed after a date expressed in Unix
format and Coordinated Universal Time (UTC).</p></td>
</tr>
<tr class="even">
<td><code
id="backup_list_copy_jobs_:_ByParentJobId">ByParentJobId</code></td>
<td><p>This is a filter to list child (nested) jobs based on parent job
ID.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      CopyJobs = list(
        list(
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
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_copy_jobs(
      NextToken = "string",
      MaxResults = 123,
      ByResourceArn = "string",
      ByState = "CREATED"|"RUNNING"|"COMPLETED"|"FAILED"|"PARTIAL",
      ByCreatedBefore = as.POSIXct(
        "2015-01-01"
      ),
      ByCreatedAfter = as.POSIXct(
        "2015-01-01"
      ),
      ByResourceType = "string",
      ByDestinationVaultArn = "string",
      ByAccountId = "string",
      ByCompleteBefore = as.POSIXct(
        "2015-01-01"
      ),
      ByCompleteAfter = as.POSIXct(
        "2015-01-01"
      ),
      ByParentJobId = "string"
    )
