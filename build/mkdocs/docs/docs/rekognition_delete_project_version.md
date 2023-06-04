<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>rekognition_delete_project_version</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes an Amazon Rekognition Custom Labels model

### Description

Deletes an Amazon Rekognition Custom Labels model.

You can't delete a model if it is running or if it is training. To check
the status of a model, use the `Status` field returned from
`describe_project_versions`. To stop a running model call
`stop_project_version`. If the model is training, wait until it
finishes.

This operation requires permissions to perform the
`rekognition:DeleteProjectVersion` action.

### Usage

    rekognition_delete_project_version(ProjectVersionArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="rekognition_delete_project_version_:_ProjectVersionArn">ProjectVersionArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the model version
that you want to delete.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Status = "TRAINING_IN_PROGRESS"|"TRAINING_COMPLETED"|"TRAINING_FAILED"|"STARTING"|"RUNNING"|"FAILED"|"STOPPING"|"STOPPED"|"DELETING"|"COPYING_IN_PROGRESS"|"COPYING_COMPLETED"|"COPYING_FAILED"
    )

### Request syntax

    svc$delete_project_version(
      ProjectVersionArn = "string"
    )
