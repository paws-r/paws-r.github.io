<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_list_code_repositories</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets a list of the Git repositories in your account

### Description

Gets a list of the Git repositories in your account.

### Usage

    sagemaker_list_code_repositories(CreationTimeAfter, CreationTimeBefore,
      LastModifiedTimeAfter, LastModifiedTimeBefore, MaxResults, NameContains,
      NextToken, SortBy, SortOrder)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sagemaker_list_code_repositories_:_CreationTimeAfter">CreationTimeAfter</code></td>
<td><p>A filter that returns only Git repositories that were created
after the specified time.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_list_code_repositories_:_CreationTimeBefore">CreationTimeBefore</code></td>
<td><p>A filter that returns only Git repositories that were created
before the specified time.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_list_code_repositories_:_LastModifiedTimeAfter">LastModifiedTimeAfter</code></td>
<td><p>A filter that returns only Git repositories that were last
modified after the specified time.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_list_code_repositories_:_LastModifiedTimeBefore">LastModifiedTimeBefore</code></td>
<td><p>A filter that returns only Git repositories that were last
modified before the specified time.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_list_code_repositories_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of Git repositories to return in the
response.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_list_code_repositories_:_NameContains">NameContains</code></td>
<td><p>A string in the Git repositories name. This filter returns only
repositories whose name contains the specified string.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_list_code_repositories_:_NextToken">NextToken</code></td>
<td><p>If the result of a <code>ListCodeRepositoriesOutput</code>
request was truncated, the response includes a <code>NextToken</code>.
To get the next set of Git repositories, use the token in the next
request.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_list_code_repositories_:_SortBy">SortBy</code></td>
<td><p>The field to sort results by. The default is
<code>Name</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_list_code_repositories_:_SortOrder">SortOrder</code></td>
<td><p>The sort order for results. The default is
<code>Ascending</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      CodeRepositorySummaryList = list(
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
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_code_repositories(
      CreationTimeAfter = as.POSIXct(
        "2015-01-01"
      ),
      CreationTimeBefore = as.POSIXct(
        "2015-01-01"
      ),
      LastModifiedTimeAfter = as.POSIXct(
        "2015-01-01"
      ),
      LastModifiedTimeBefore = as.POSIXct(
        "2015-01-01"
      ),
      MaxResults = 123,
      NameContains = "string",
      NextToken = "string",
      SortBy = "Name"|"CreationTime"|"LastModifiedTime",
      SortOrder = "Ascending"|"Descending"
    )
