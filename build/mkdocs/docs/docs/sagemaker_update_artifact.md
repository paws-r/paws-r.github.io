<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_update_artifact</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates an artifact

### Description

Updates an artifact.

### Usage

    sagemaker_update_artifact(ArtifactArn, ArtifactName, Properties,
      PropertiesToRemove)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sagemaker_update_artifact_:_ArtifactArn">ArtifactArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the artifact to
update.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_update_artifact_:_ArtifactName">ArtifactName</code></td>
<td><p>The new name for the artifact.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_update_artifact_:_Properties">Properties</code></td>
<td><p>The new list of properties. Overwrites the current property
list.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_update_artifact_:_PropertiesToRemove">PropertiesToRemove</code></td>
<td><p>A list of properties to remove.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ArtifactArn = "string"
    )

### Request syntax

    svc$update_artifact(
      ArtifactArn = "string",
      ArtifactName = "string",
      Properties = list(
        "string"
      ),
      PropertiesToRemove = list(
        "string"
      )
    )
