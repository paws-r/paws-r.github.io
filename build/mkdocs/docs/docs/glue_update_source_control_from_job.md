<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>glue_update_source_control_from_job</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Synchronizes a job to the source control repository

### Description

Synchronizes a job to the source control repository. This operation
takes the job artifacts from the Glue internal stores and makes a commit
to the remote repository that is configured on the job.

This API supports optional parameters which take in the repository
information.

### Usage

    glue_update_source_control_from_job(JobName, Provider, RepositoryName,
      RepositoryOwner, BranchName, Folder, CommitId, AuthStrategy, AuthToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="glue_update_source_control_from_job_:_JobName">JobName</code></td>
<td><p>The name of the Glue job to be synchronized to or from the remote
repository.</p></td>
</tr>
<tr class="even">
<td><code
id="glue_update_source_control_from_job_:_Provider">Provider</code></td>
<td><p>The provider for the remote repository.</p></td>
</tr>
<tr class="odd">
<td><code
id="glue_update_source_control_from_job_:_RepositoryName">RepositoryName</code></td>
<td><p>The name of the remote repository that contains the job
artifacts.</p></td>
</tr>
<tr class="even">
<td><code
id="glue_update_source_control_from_job_:_RepositoryOwner">RepositoryOwner</code></td>
<td><p>The owner of the remote repository that contains the job
artifacts.</p></td>
</tr>
<tr class="odd">
<td><code
id="glue_update_source_control_from_job_:_BranchName">BranchName</code></td>
<td><p>An optional branch in the remote repository.</p></td>
</tr>
<tr class="even">
<td><code
id="glue_update_source_control_from_job_:_Folder">Folder</code></td>
<td><p>An optional folder in the remote repository.</p></td>
</tr>
<tr class="odd">
<td><code
id="glue_update_source_control_from_job_:_CommitId">CommitId</code></td>
<td><p>A commit ID for a commit in the remote repository.</p></td>
</tr>
<tr class="even">
<td><code
id="glue_update_source_control_from_job_:_AuthStrategy">AuthStrategy</code></td>
<td><p>The type of authentication, which can be an authentication token
stored in Amazon Web Services Secrets Manager, or a personal access
token.</p></td>
</tr>
<tr class="odd">
<td><code
id="glue_update_source_control_from_job_:_AuthToken">AuthToken</code></td>
<td><p>The value of the authorization token.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      JobName = "string"
    )

### Request syntax

    svc$update_source_control_from_job(
      JobName = "string",
      Provider = "GITHUB"|"AWS_CODE_COMMIT",
      RepositoryName = "string",
      RepositoryOwner = "string",
      BranchName = "string",
      Folder = "string",
      CommitId = "string",
      AuthStrategy = "PERSONAL_ACCESS_TOKEN"|"AWS_SECRETS_MANAGER",
      AuthToken = "string"
    )
