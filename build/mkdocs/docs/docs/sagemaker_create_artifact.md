<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_create_artifact</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates an artifact

### Description

Creates an *artifact*. An artifact is a lineage tracking entity that
represents a URI addressable object or data. Some examples are the S3
URI of a dataset and the ECR registry path of an image. For more
information, see [Amazon SageMaker ML Lineage
Tracking](https://docs.aws.amazon.com/sagemaker/latest/dg/lineage-tracking.html).

### Usage

    sagemaker_create_artifact(ArtifactName, Source, ArtifactType,
      Properties, MetadataProperties, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sagemaker_create_artifact_:_ArtifactName">ArtifactName</code></td>
<td><p>The name of the artifact. Must be unique to your account in an
Amazon Web Services Region.</p></td>
</tr>
<tr class="even">
<td><code id="sagemaker_create_artifact_:_Source">Source</code></td>
<td><p>[required] The ID, ID type, and URI of the source.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_create_artifact_:_ArtifactType">ArtifactType</code></td>
<td><p>[required] The artifact type.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_create_artifact_:_Properties">Properties</code></td>
<td><p>A list of properties to add to the artifact.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_create_artifact_:_MetadataProperties">MetadataProperties</code></td>
<td></td>
</tr>
<tr class="even">
<td><code id="sagemaker_create_artifact_:_Tags">Tags</code></td>
<td><p>A list of tags to apply to the artifact.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ArtifactArn = "string"
    )

### Request syntax

    svc$create_artifact(
      ArtifactName = "string",
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
      MetadataProperties = list(
        CommitId = "string",
        Repository = "string",
        GeneratedBy = "string",
        ProjectId = "string"
      ),
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )
