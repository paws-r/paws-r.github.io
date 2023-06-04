<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codegurureviewer_associate_repository</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Use to associate an Amazon Web Services CodeCommit repository or a repository managed by Amazon Web Services CodeStar Connections with Amazon CodeGuru Reviewer

### Description

Use to associate an Amazon Web Services CodeCommit repository or a
repository managed by Amazon Web Services CodeStar Connections with
Amazon CodeGuru Reviewer. When you associate a repository, CodeGuru
Reviewer reviews source code changes in the repository's pull requests
and provides automatic recommendations. You can view recommendations
using the CodeGuru Reviewer console. For more information, see
[Recommendations in Amazon CodeGuru
Reviewer](https://docs.aws.amazon.com/codeguru/latest/reviewer-ug/recommendations.html)
in the *Amazon CodeGuru Reviewer User Guide.*

If you associate a CodeCommit or S3 repository, it must be in the same
Amazon Web Services Region and Amazon Web Services account where its
CodeGuru Reviewer code reviews are configured.

Bitbucket and GitHub Enterprise Server repositories are managed by
Amazon Web Services CodeStar Connections to connect to CodeGuru
Reviewer. For more information, see [Associate a
repository](https://docs.aws.amazon.com/codeguru/latest/reviewer-ug/getting-started-associate-repository.html)
in the *Amazon CodeGuru Reviewer User Guide.*

You cannot use the CodeGuru Reviewer SDK or the Amazon Web Services CLI
to associate a GitHub repository with Amazon CodeGuru Reviewer. To
associate a GitHub repository, use the console. For more information,
see [Getting started with CodeGuru
Reviewer](https://docs.aws.amazon.com/codeguru/latest/reviewer-ug/getting-started-with-guru.html)
in the *CodeGuru Reviewer User Guide.*

### Usage

    codegurureviewer_associate_repository(Repository, ClientRequestToken,
      Tags, KMSKeyDetails)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="codegurureviewer_associate_repository_:_Repository">Repository</code></td>
<td><p>[required] The repository to associate.</p></td>
</tr>
<tr class="even">
<td><code
id="codegurureviewer_associate_repository_:_ClientRequestToken">ClientRequestToken</code></td>
<td><p>Amazon CodeGuru Reviewer uses this value to prevent the
accidental creation of duplicate repository associations if there are
failures and retries.</p></td>
</tr>
<tr class="odd">
<td><code
id="codegurureviewer_associate_repository_:_Tags">Tags</code></td>
<td><p>An array of key-value pairs used to tag an associated repository.
A tag is a custom attribute label with two parts:</p>
<ul>
<li><p>A <em>tag key</em> (for example, <code>CostCenter</code>,
<code>Environment</code>, <code>Project</code>, or <code>Secret</code>).
Tag keys are case sensitive.</p></li>
<li><p>An optional field known as a <em>tag value</em> (for example,
<code>111122223333</code>, <code>Production</code>, or a team name).
Omitting the tag value is the same as using an empty string. Like tag
keys, tag values are case sensitive.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="codegurureviewer_associate_repository_:_KMSKeyDetails">KMSKeyDetails</code></td>
<td><p>A <code>KMSKeyDetails</code> object that contains:</p>
<ul>
<li><p>The encryption option for this repository association. It is
either owned by Amazon Web Services Key Management Service (KMS)
(<code>AWS_OWNED_CMK</code>) or customer managed
(<code>CUSTOMER_MANAGED_CMK</code>).</p></li>
<li><p>The ID of the Amazon Web Services KMS key that is associated with
this repository association.</p></li>
</ul></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      RepositoryAssociation = list(
        AssociationId = "string",
        AssociationArn = "string",
        ConnectionArn = "string",
        Name = "string",
        Owner = "string",
        ProviderType = "CodeCommit"|"GitHub"|"Bitbucket"|"GitHubEnterpriseServer"|"S3Bucket",
        State = "Associated"|"Associating"|"Failed"|"Disassociating"|"Disassociated",
        StateReason = "string",
        LastUpdatedTimeStamp = as.POSIXct(
          "2015-01-01"
        ),
        CreatedTimeStamp = as.POSIXct(
          "2015-01-01"
        ),
        KMSKeyDetails = list(
          KMSKeyId = "string",
          EncryptionOption = "AWS_OWNED_CMK"|"CUSTOMER_MANAGED_CMK"
        ),
        S3RepositoryDetails = list(
          BucketName = "string",
          CodeArtifacts = list(
            SourceCodeArtifactsObjectKey = "string",
            BuildArtifactsObjectKey = "string"
          )
        )
      ),
      Tags = list(
        "string"
      )
    )

### Request syntax

    svc$associate_repository(
      Repository = list(
        CodeCommit = list(
          Name = "string"
        ),
        Bitbucket = list(
          Name = "string",
          ConnectionArn = "string",
          Owner = "string"
        ),
        GitHubEnterpriseServer = list(
          Name = "string",
          ConnectionArn = "string",
          Owner = "string"
        ),
        S3Bucket = list(
          Name = "string",
          BucketName = "string"
        )
      ),
      ClientRequestToken = "string",
      Tags = list(
        "string"
      ),
      KMSKeyDetails = list(
        KMSKeyId = "string",
        EncryptionOption = "AWS_OWNED_CMK"|"CUSTOMER_MANAGED_CMK"
      )
    )
