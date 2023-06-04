<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codegurureviewer_list_code_reviews</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists all the code reviews that the customer has created in the past 90 days

### Description

Lists all the code reviews that the customer has created in the past 90
days.

### Usage

    codegurureviewer_list_code_reviews(ProviderTypes, States,
      RepositoryNames, Type, MaxResults, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="codegurureviewer_list_code_reviews_:_ProviderTypes">ProviderTypes</code></td>
<td><p>List of provider types for filtering that needs to be applied
before displaying the result. For example, <code
style="white-space: pre;">⁠providerTypes=[GitHub]⁠</code> lists code
reviews from GitHub.</p></td>
</tr>
<tr class="even">
<td><code
id="codegurureviewer_list_code_reviews_:_States">States</code></td>
<td><p>List of states for filtering that needs to be applied before
displaying the result. For example, <code
style="white-space: pre;">⁠states=[Pending]⁠</code> lists code reviews in
the Pending state.</p>
<p>The valid code review states are:</p>
<ul>
<li><p><code>Completed</code>: The code review is complete.</p></li>
<li><p><code>Pending</code>: The code review started and has not
completed or failed.</p></li>
<li><p><code>Failed</code>: The code review failed.</p></li>
<li><p><code>Deleting</code>: The code review is being deleted.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code
id="codegurureviewer_list_code_reviews_:_RepositoryNames">RepositoryNames</code></td>
<td><p>List of repository names for filtering that needs to be applied
before displaying the result.</p></td>
</tr>
<tr class="even">
<td><code
id="codegurureviewer_list_code_reviews_:_Type">Type</code></td>
<td><p>[required] The type of code reviews to list in the
response.</p></td>
</tr>
<tr class="odd">
<td><code
id="codegurureviewer_list_code_reviews_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results that are returned per call. The
default is 100.</p></td>
</tr>
<tr class="even">
<td><code
id="codegurureviewer_list_code_reviews_:_NextToken">NextToken</code></td>
<td><p>If <code>nextToken</code> is returned, there are more results
available. The value of <code>nextToken</code> is a unique pagination
token for each page. Make the call again using the returned token to
retrieve the next page. Keep all other arguments unchanged.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      CodeReviewSummaries = list(
        list(
          Name = "string",
          CodeReviewArn = "string",
          RepositoryName = "string",
          Owner = "string",
          ProviderType = "CodeCommit"|"GitHub"|"Bitbucket"|"GitHubEnterpriseServer"|"S3Bucket",
          State = "Completed"|"Pending"|"Failed"|"Deleting",
          CreatedTimeStamp = as.POSIXct(
            "2015-01-01"
          ),
          LastUpdatedTimeStamp = as.POSIXct(
            "2015-01-01"
          ),
          Type = "PullRequest"|"RepositoryAnalysis",
          PullRequestId = "string",
          MetricsSummary = list(
            MeteredLinesOfCodeCount = 123,
            SuppressedLinesOfCodeCount = 123,
            FindingsCount = 123
          ),
          SourceCodeType = list(
            CommitDiff = list(
              SourceCommit = "string",
              DestinationCommit = "string",
              MergeBaseCommit = "string"
            ),
            RepositoryHead = list(
              BranchName = "string"
            ),
            BranchDiff = list(
              SourceBranchName = "string",
              DestinationBranchName = "string"
            ),
            S3BucketRepository = list(
              Name = "string",
              Details = list(
                BucketName = "string",
                CodeArtifacts = list(
                  SourceCodeArtifactsObjectKey = "string",
                  BuildArtifactsObjectKey = "string"
                )
              )
            ),
            RequestMetadata = list(
              RequestId = "string",
              Requester = "string",
              EventInfo = list(
                Name = "string",
                State = "string"
              ),
              VendorName = "GitHub"|"GitLab"|"NativeS3"
            )
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_code_reviews(
      ProviderTypes = list(
        "CodeCommit"|"GitHub"|"Bitbucket"|"GitHubEnterpriseServer"|"S3Bucket"
      ),
      States = list(
        "Completed"|"Pending"|"Failed"|"Deleting"
      ),
      RepositoryNames = list(
        "string"
      ),
      Type = "PullRequest"|"RepositoryAnalysis",
      MaxResults = 123,
      NextToken = "string"
    )
