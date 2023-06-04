<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_describe_code_repository</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets details about the specified Git repository

### Description

Gets details about the specified Git repository.

### Usage

    sagemaker_describe_code_repository(CodeRepositoryName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sagemaker_describe_code_repository_:_CodeRepositoryName">CodeRepositoryName</code></td>
<td><p>[required] The name of the Git repository to describe.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      CodeRepositoryName = "string",
      CodeRepositoryArn = "string",
      CreationTime = as.POSIXct(
        "2015-01-01"
      ),
      LastModifiedTime = as.POSIXct(
        "2015-01-01"
      ),
      GitConfig = list(
        RepositoryUrl = "string",
        Branch = "string",
        SecretArn = "string"
      )
    )

### Request syntax

    svc$describe_code_repository(
      CodeRepositoryName = "string"
    )
