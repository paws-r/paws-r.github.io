<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>backup_list_backup_jobs</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a list of existing backup jobs for an authenticated account for the last 30 days

### Description

Returns a list of existing backup jobs for an authenticated account for
the last 30 days. For a longer period of time, consider using these
[monitoring
tools](https://docs.aws.amazon.com/aws-backup/latest/devguide/monitoring.html).

### Usage

    backup_list_backup_jobs(NextToken, MaxResults, ByResourceArn, ByState,
      ByBackupVaultName, ByCreatedBefore, ByCreatedAfter, ByResourceType,
      ByAccountId, ByCompleteAfter, ByCompleteBefore, ByParentJobId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="backup_list_backup_jobs_:_NextToken">NextToken</code></td>
<td><p>The next item following a partial list of returned items. For
example, if a request is made to return <code>maxResults</code> number
of items, <code>NextToken</code> allows you to return more items in your
list starting at the location pointed to by the next token.</p></td>
</tr>
<tr class="even">
<td><code
id="backup_list_backup_jobs_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of items to be returned.</p></td>
</tr>
<tr class="odd">
<td><code
id="backup_list_backup_jobs_:_ByResourceArn">ByResourceArn</code></td>
<td><p>Returns only backup jobs that match the specified resource Amazon
Resource Name (ARN).</p></td>
</tr>
<tr class="even">
<td><code id="backup_list_backup_jobs_:_ByState">ByState</code></td>
<td><p>Returns only backup jobs that are in the specified
state.</p></td>
</tr>
<tr class="odd">
<td><code
id="backup_list_backup_jobs_:_ByBackupVaultName">ByBackupVaultName</code></td>
<td><p>Returns only backup jobs that will be stored in the specified
backup vault. Backup vaults are identified by names that are unique to
the account used to create them and the Amazon Web Services Region where
they are created. They consist of lowercase letters, numbers, and
hyphens.</p></td>
</tr>
<tr class="even">
<td><code
id="backup_list_backup_jobs_:_ByCreatedBefore">ByCreatedBefore</code></td>
<td><p>Returns only backup jobs that were created before the specified
date.</p></td>
</tr>
<tr class="odd">
<td><code
id="backup_list_backup_jobs_:_ByCreatedAfter">ByCreatedAfter</code></td>
<td><p>Returns only backup jobs that were created after the specified
date.</p></td>
</tr>
<tr class="even">
<td><code
id="backup_list_backup_jobs_:_ByResourceType">ByResourceType</code></td>
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
<tr class="odd">
<td><code
id="backup_list_backup_jobs_:_ByAccountId">ByAccountId</code></td>
<td><p>The account ID to list the jobs from. Returns only backup jobs
associated with the specified account ID.</p>
<p>If used from an Organizations management account, passing
<code>*</code> returns all jobs across the organization.</p></td>
</tr>
<tr class="even">
<td><code
id="backup_list_backup_jobs_:_ByCompleteAfter">ByCompleteAfter</code></td>
<td><p>Returns only backup jobs completed after a date expressed in Unix
format and Coordinated Universal Time (UTC).</p></td>
</tr>
<tr class="odd">
<td><code
id="backup_list_backup_jobs_:_ByCompleteBefore">ByCompleteBefore</code></td>
<td><p>Returns only backup jobs completed before a date expressed in
Unix format and Coordinated Universal Time (UTC).</p></td>
</tr>
<tr class="even">
<td><code
id="backup_list_backup_jobs_:_ByParentJobId">ByParentJobId</code></td>
<td><p>This is a filter to list child (nested) jobs based on parent job
ID.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      BackupJobs = list(
        list(
          AccountId = "string",
          BackupJobId = "string",
          BackupVaultName = "string",
          BackupVaultArn = "string",
          RecoveryPointArn = "string",
          ResourceArn = "string",
          CreationDate = as.POSIXct(
            "2015-01-01"
          ),
          CompletionDate = as.POSIXct(
            "2015-01-01"
          ),
          State = "CREATED"|"PENDING"|"RUNNING"|"ABORTING"|"ABORTED"|"COMPLETED"|"FAILED"|"EXPIRED"|"PARTIAL",
          StatusMessage = "string",
          PercentDone = "string",
          BackupSizeInBytes = 123,
          IamRoleArn = "string",
          CreatedBy = list(
            BackupPlanId = "string",
            BackupPlanArn = "string",
            BackupPlanVersion = "string",
            BackupRuleId = "string"
          ),
          ExpectedCompletionDate = as.POSIXct(
            "2015-01-01"
          ),
          StartBy = as.POSIXct(
            "2015-01-01"
          ),
          ResourceType = "string",
          BytesTransferred = 123,
          BackupOptions = list(
            "string"
          ),
          BackupType = "string",
          ParentJobId = "string",
          IsParent = TRUE|FALSE,
          ResourceName = "string"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_backup_jobs(
      NextToken = "string",
      MaxResults = 123,
      ByResourceArn = "string",
      ByState = "CREATED"|"PENDING"|"RUNNING"|"ABORTING"|"ABORTED"|"COMPLETED"|"FAILED"|"EXPIRED"|"PARTIAL",
      ByBackupVaultName = "string",
      ByCreatedBefore = as.POSIXct(
        "2015-01-01"
      ),
      ByCreatedAfter = as.POSIXct(
        "2015-01-01"
      ),
      ByResourceType = "string",
      ByAccountId = "string",
      ByCompleteAfter = as.POSIXct(
        "2015-01-01"
      ),
      ByCompleteBefore = as.POSIXct(
        "2015-01-01"
      ),
      ByParentJobId = "string"
    )
