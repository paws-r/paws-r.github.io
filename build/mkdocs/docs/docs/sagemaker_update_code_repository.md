<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_update_code_repository</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates the specified Git repository with the specified values

### Description

Updates the specified Git repository with the specified values.

### Usage

    sagemaker_update_code_repository(CodeRepositoryName, GitConfig)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sagemaker_update_code_repository_:_CodeRepositoryName">CodeRepositoryName</code></td>
<td><p>[required] The name of the Git repository to update.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_update_code_repository_:_GitConfig">GitConfig</code></td>
<td><p>The configuration of the git repository, including the URL and
the Amazon Resource Name (ARN) of the Amazon Web Services Secrets
Manager secret that contains the credentials used to access the
repository. The secret must have a staging label of
<code>AWSCURRENT</code> and must be in the following format:</p>
<p><code
style="white-space: pre;">⁠{"username": UserName, "password": Password}⁠</code></p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      CodeRepositoryArn = "string"
    )

### Request syntax

    svc$update_code_repository(
      CodeRepositoryName = "string",
      GitConfig = list(
        SecretArn = "string"
      )
    )
