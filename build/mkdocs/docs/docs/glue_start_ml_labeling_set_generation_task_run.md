<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>glue_start_ml_labeling_set_generation_task_run</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Starts the active learning workflow for your machine learning transform to improve the transform's quality by generating label sets and adding labels

### Description

Starts the active learning workflow for your machine learning transform
to improve the transform's quality by generating label sets and adding
labels.

When the `start_ml_labeling_set_generation_task_run` finishes, Glue will
have generated a "labeling set" or a set of questions for humans to
answer.

In the case of the `FindMatches` transform, these questions are of the
form, “What is the correct way to group these rows together into groups
composed entirely of matching records?”

After the labeling process is finished, you can upload your labels with
a call to `start_import_labels_task_run`. After
`start_import_labels_task_run` finishes, all future runs of the machine
learning transform will use the new and improved labels and perform a
higher-quality transformation.

### Usage

    glue_start_ml_labeling_set_generation_task_run(TransformId,
      OutputS3Path)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="glue_start_ml_labeling_set_generation_task_run_:_TransformId">TransformId</code></td>
<td><p>[required] The unique identifier of the machine learning
transform.</p></td>
</tr>
<tr class="even">
<td><code
id="glue_start_ml_labeling_set_generation_task_run_:_OutputS3Path">OutputS3Path</code></td>
<td><p>[required] The Amazon Simple Storage Service (Amazon S3) path
where you generate the labeling set.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      TaskRunId = "string"
    )

### Request syntax

    svc$start_ml_labeling_set_generation_task_run(
      TransformId = "string",
      OutputS3Path = "string"
    )
