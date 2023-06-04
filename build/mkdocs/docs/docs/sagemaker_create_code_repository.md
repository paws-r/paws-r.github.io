<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_create_code_repository</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a Git repository as a resource in your SageMaker account

### Description

Creates a Git repository as a resource in your SageMaker account. You
can associate the repository with notebook instances so that you can use
Git source control for the notebooks you create. The Git repository is a
resource in your SageMaker account, so it can be associated with more
than one notebook instance, and it persists independently from the
lifecycle of any notebook instances it is associated with.

The repository can be hosted either in [Amazon Web Services
CodeCommit](https://docs.aws.amazon.com/codecommit/latest/userguide/welcome.html)
or in any other Git repository.

### Usage

    sagemaker_create_code_repository(CodeRepositoryName, GitConfig, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sagemaker_create_code_repository_:_CodeRepositoryName">CodeRepositoryName</code></td>
<td><p>[required] The name of the Git repository. The name must have 1
to 63 characters. Valid characters are a-z, A-Z, 0-9, and -
(hyphen).</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_create_code_repository_:_GitConfig">GitConfig</code></td>
<td><p>[required] Specifies details about the repository, including the
URL where the repository is located, the default branch, and credentials
to use to access the repository.</p></td>
</tr>
<tr class="odd">
<td><code id="sagemaker_create_code_repository_:_Tags">Tags</code></td>
<td><p>An array of key-value pairs. You can use tags to categorize your
Amazon Web Services resources in different ways, for example, by
purpose, owner, or environment. For more information, see <a
href="https://docs.aws.amazon.com/tag-editor/latest/userguide/tagging.html">Tagging
Amazon Web Services Resources</a>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      CodeRepositoryArn = "string"
    )

### Request syntax

    svc$create_code_repository(
      CodeRepositoryName = "string",
      GitConfig = list(
        RepositoryUrl = "string",
        Branch = "string",
        SecretArn = "string"
      ),
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )
