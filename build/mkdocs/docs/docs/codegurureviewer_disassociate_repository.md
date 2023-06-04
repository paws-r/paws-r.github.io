<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codegurureviewer_disassociate_repository</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Removes the association between Amazon CodeGuru Reviewer and a repository

### Description

Removes the association between Amazon CodeGuru Reviewer and a
repository.

### Usage

    codegurureviewer_disassociate_repository(AssociationArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="codegurureviewer_disassociate_repository_:_AssociationArn">AssociationArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the <a
href="https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_RepositoryAssociation.html">RepositoryAssociation</a>
object. You can retrieve this ARN by calling
<code>list_repository_associations</code>.</p></td>
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

    svc$disassociate_repository(
      AssociationArn = "string"
    )
