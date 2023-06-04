<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>rekognition_stop_project_version</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Stops a running model

### Description

Stops a running model. The operation might take a while to complete. To
check the current status, call `describe_project_versions`.

This operation requires permissions to perform the
`rekognition:StopProjectVersion` action.

### Usage

    rekognition_stop_project_version(ProjectVersionArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="rekognition_stop_project_version_:_ProjectVersionArn">ProjectVersionArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the model version
that you want to delete.</p>
<p>This operation requires permissions to perform the
<code>rekognition:StopProjectVersion</code> action.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Status = "TRAINING_IN_PROGRESS"|"TRAINING_COMPLETED"|"TRAINING_FAILED"|"STARTING"|"RUNNING"|"FAILED"|"STOPPING"|"STOPPED"|"DELETING"|"COPYING_IN_PROGRESS"|"COPYING_COMPLETED"|"COPYING_FAILED"
    )

### Request syntax

    svc$stop_project_version(
      ProjectVersionArn = "string"
    )
