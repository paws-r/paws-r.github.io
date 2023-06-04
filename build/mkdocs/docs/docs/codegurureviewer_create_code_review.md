<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codegurureviewer_create_code_review</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Use to create a code review with a CodeReviewType of RepositoryAnalysis

### Description

Use to create a code review with a
[CodeReviewType](https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_CodeReviewType.html)
of `RepositoryAnalysis`. This type of code review analyzes all code
under a specified branch in an associated repository. `PullRequest` code
reviews are automatically triggered by a pull request.

### Usage

    codegurureviewer_create_code_review(Name, RepositoryAssociationArn,
      Type, ClientRequestToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="codegurureviewer_create_code_review_:_Name">Name</code></td>
<td><p>[required] The name of the code review. The name of each code
review in your Amazon Web Services account must be unique.</p></td>
</tr>
<tr class="even">
<td><code
id="codegurureviewer_create_code_review_:_RepositoryAssociationArn">RepositoryAssociationArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the <a
href="https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_RepositoryAssociation.html">RepositoryAssociation</a>
object. You can retrieve this ARN by calling
<code>list_repository_associations</code>.</p>
<p>A code review can only be created on an associated repository. This
is the ARN of the associated repository.</p></td>
</tr>
<tr class="odd">
<td><code
id="codegurureviewer_create_code_review_:_Type">Type</code></td>
<td><p>[required] The type of code review to create. This is specified
using a <a
href="https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_CodeReviewType.html">CodeReviewType</a>
object. You can create a code review only of type
<code>RepositoryAnalysis</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="codegurureviewer_create_code_review_:_ClientRequestToken">ClientRequestToken</code></td>
<td><p>Amazon CodeGuru Reviewer uses this value to prevent the
accidental creation of duplicate code reviews if there are failures and
retries.</p></td>
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

    svc$create_code_review(
      Name = "string",
      RepositoryAssociationArn = "string",
      Type = list(
        RepositoryAnalysis = list(
          RepositoryHead = list(
            BranchName = "string"
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
        ),
        AnalysisTypes = list(
          "Security"|"CodeQuality"
        )
      ),
      ClientRequestToken = "string"
    )
