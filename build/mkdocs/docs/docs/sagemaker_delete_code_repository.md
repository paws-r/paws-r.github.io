<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_delete_code_repository</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the specified Git repository from your account

### Description

Deletes the specified Git repository from your account.

### Usage

    sagemaker_delete_code_repository(CodeRepositoryName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sagemaker_delete_code_repository_:_CodeRepositoryName">CodeRepositoryName</code></td>
<td><p>[required] The name of the Git repository to delete.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_code_repository(
      CodeRepositoryName = "string"
    )
