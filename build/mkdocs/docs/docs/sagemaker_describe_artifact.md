<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_describe_artifact</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes an artifact

### Description

Describes an artifact.

### Usage

    sagemaker_describe_artifact(ArtifactArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sagemaker_describe_artifact_:_ArtifactArn">ArtifactArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the artifact to
describe.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ArtifactName = "string",
      ArtifactArn = "string",
      Source = list(
        SourceUri = "string",
        SourceTypes = list(
          list(
            SourceIdType = "MD5Hash"|"S3ETag"|"S3Version"|"Custom",
            Value = "string"
          )
        )
      ),
      ArtifactType = "string",
      Properties = list(
        "string"
      ),
      CreationTime = as.POSIXct(
        "2015-01-01"
      ),
      CreatedBy = list(
        UserProfileArn = "string",
        UserProfileName = "string",
        DomainId = "string",
        IamIdentity = list(
          Arn = "string",
          PrincipalId = "string",
          SourceIdentity = "string"
        )
      ),
      LastModifiedTime = as.POSIXct(
        "2015-01-01"
      ),
      LastModifiedBy = list(
        UserProfileArn = "string",
        UserProfileName = "string",
        DomainId = "string",
        IamIdentity = list(
          Arn = "string",
          PrincipalId = "string",
          SourceIdentity = "string"
        )
      ),
      MetadataProperties = list(
        CommitId = "string",
        Repository = "string",
        GeneratedBy = "string",
        ProjectId = "string"
      ),
      LineageGroupArn = "string"
    )

### Request syntax

    svc$describe_artifact(
      ArtifactArn = "string"
    )
