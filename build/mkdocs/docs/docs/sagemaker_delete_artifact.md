<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_delete_artifact</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes an artifact

### Description

Deletes an artifact. Either `ArtifactArn` or `Source` must be specified.

### Usage

    sagemaker_delete_artifact(ArtifactArn, Source)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sagemaker_delete_artifact_:_ArtifactArn">ArtifactArn</code></td>
<td><p>The Amazon Resource Name (ARN) of the artifact to
delete.</p></td>
</tr>
<tr class="even">
<td><code id="sagemaker_delete_artifact_:_Source">Source</code></td>
<td><p>The URI of the source.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ArtifactArn = "string"
    )

### Request syntax

    svc$delete_artifact(
      ArtifactArn = "string",
      Source = list(
        SourceUri = "string",
        SourceTypes = list(
          list(
            SourceIdType = "MD5Hash"|"S3ETag"|"S3Version"|"Custom",
            Value = "string"
          )
        )
      )
    )
