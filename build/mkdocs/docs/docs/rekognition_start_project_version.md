<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>rekognition_start_project_version</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Starts the running of the version of a model

### Description

Starts the running of the version of a model. Starting a model takes a
while to complete. To check the current state of the model, use
`describe_project_versions`.

Once the model is running, you can detect custom labels in new images by
calling `detect_custom_labels`.

You are charged for the amount of time that the model is running. To
stop a running model, call `stop_project_version`.

For more information, see *Running a trained Amazon Rekognition Custom
Labels model* in the Amazon Rekognition Custom Labels Guide.

This operation requires permissions to perform the
`rekognition:StartProjectVersion` action.

### Usage

    rekognition_start_project_version(ProjectVersionArn, MinInferenceUnits,
      MaxInferenceUnits)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="rekognition_start_project_version_:_ProjectVersionArn">ProjectVersionArn</code></td>
<td><p>[required] The Amazon Resource Name(ARN) of the model version
that you want to start.</p></td>
</tr>
<tr class="even">
<td><code
id="rekognition_start_project_version_:_MinInferenceUnits">MinInferenceUnits</code></td>
<td><p>[required] The minimum number of inference units to use. A single
inference unit represents 1 hour of processing.</p>
<p>For information about the number of transactions per second (TPS)
that an inference unit can support, see <em>Running a trained Amazon
Rekognition Custom Labels model</em> in the Amazon Rekognition Custom
Labels Guide.</p>
<p>Use a higher number to increase the TPS throughput of your model. You
are charged for the number of inference units that you use.</p></td>
</tr>
<tr class="odd">
<td><code
id="rekognition_start_project_version_:_MaxInferenceUnits">MaxInferenceUnits</code></td>
<td><p>The maximum number of inference units to use for auto-scaling the
model. If you don't specify a value, Amazon Rekognition Custom Labels
doesn't auto-scale the model.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Status = "TRAINING_IN_PROGRESS"|"TRAINING_COMPLETED"|"TRAINING_FAILED"|"STARTING"|"RUNNING"|"FAILED"|"STOPPING"|"STOPPED"|"DELETING"|"COPYING_IN_PROGRESS"|"COPYING_COMPLETED"|"COPYING_FAILED"
    )

### Request syntax

    svc$start_project_version(
      ProjectVersionArn = "string",
      MinInferenceUnits = 123,
      MaxInferenceUnits = 123
    )
