<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>glue_update_job_from_source_control</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Synchronizes a job from the source control repository

### Description

Synchronizes a job from the source control repository. This operation
takes the job artifacts that are located in the remote repository and
updates the Glue internal stores with these artifacts.

This API supports optional parameters which take in the repository
information.

### Usage

    glue_update_job_from_source_control(JobName, Provider, RepositoryName,
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
id="glue_update_job_from_source_control_:_JobName">JobName</code></td>
<td><p>The name of the Glue job to be synchronized to or from the remote
repository.</p></td>
</tr>
<tr class="even">
<td><code
id="glue_update_job_from_source_control_:_Provider">Provider</code></td>
<td><p>The provider for the remote repository.</p></td>
</tr>
<tr class="odd">
<td><code
id="glue_update_job_from_source_control_:_RepositoryName">RepositoryName</code></td>
<td><p>The name of the remote repository that contains the job
artifacts.</p></td>
</tr>
<tr class="even">
<td><code
id="glue_update_job_from_source_control_:_RepositoryOwner">RepositoryOwner</code></td>
<td><p>The owner of the remote repository that contains the job
artifacts.</p></td>
</tr>
<tr class="odd">
<td><code
id="glue_update_job_from_source_control_:_BranchName">BranchName</code></td>
<td><p>An optional branch in the remote repository.</p></td>
</tr>
<tr class="even">
<td><code
id="glue_update_job_from_source_control_:_Folder">Folder</code></td>
<td><p>An optional folder in the remote repository.</p></td>
</tr>
<tr class="odd">
<td><code
id="glue_update_job_from_source_control_:_CommitId">CommitId</code></td>
<td><p>A commit ID for a commit in the remote repository.</p></td>
</tr>
<tr class="even">
<td><code
id="glue_update_job_from_source_control_:_AuthStrategy">AuthStrategy</code></td>
<td><p>The type of authentication, which can be an authentication token
stored in Amazon Web Services Secrets Manager, or a personal access
token.</p></td>
</tr>
<tr class="odd">
<td><code
id="glue_update_job_from_source_control_:_AuthToken">AuthToken</code></td>
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

    svc$update_job_from_source_control(
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
