<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codegurureviewer_describe_code_review</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns the metadata associated with the code review along with its status

### Description

Returns the metadata associated with the code review along with its
status.

### Usage

    codegurureviewer_describe_code_review(CodeReviewArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="codegurureviewer_describe_code_review_:_CodeReviewArn">CodeReviewArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the <a
href="https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_CodeReview.html">CodeReview</a>
object.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      CodeReview = list(
        Name = "string",
        CodeReviewArn = "string",
        RepositoryName = "string",
        Owner = "string",
        ProviderType = "CodeCommit"|"GitHub"|"Bitbucket"|"GitHubEnterpriseServer"|"S3Bucket",
        State = "Completed"|"Pending"|"Failed"|"Deleting",
        StateReason = "string",
        CreatedTimeStamp = as.POSIXct(
          "2015-01-01"
        ),
        LastUpdatedTimeStamp = as.POSIXct(
          "2015-01-01"
        ),
        Type = "PullRequest"|"RepositoryAnalysis",
        PullRequestId = "string",
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
        ),
        AssociationArn = "string",
        Metrics = list(
          MeteredLinesOfCodeCount = 123,
          SuppressedLinesOfCodeCount = 123,
          FindingsCount = 123
        ),
        AnalysisTypes = list(
          "Security"|"CodeQuality"
        ),
        ConfigFileState = "Present"|"Absent"|"PresentWithErrors"
      )
    )

### Request syntax

    svc$describe_code_review(
      CodeReviewArn = "string"
    )
