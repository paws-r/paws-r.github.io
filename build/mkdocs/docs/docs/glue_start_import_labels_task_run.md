<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>glue_start_import_labels_task_run</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Enables you to provide additional labels (examples of truth) to be used to teach the machine learning transform and improve its quality

### Description

Enables you to provide additional labels (examples of truth) to be used
to teach the machine learning transform and improve its quality. This
API operation is generally used as part of the active learning workflow
that starts with the `start_ml_labeling_set_generation_task_run` call
and that ultimately results in improving the quality of your machine
learning transform.

After the `start_ml_labeling_set_generation_task_run` finishes, Glue
machine learning will have generated a series of questions for humans to
answer. (Answering these questions is often called 'labeling' in the
machine learning workflows). In the case of the `FindMatches` transform,
these questions are of the form, “What is the correct way to group these
rows together into groups composed entirely of matching records?” After
the labeling process is finished, users upload their answers/labels with
a call to `start_import_labels_task_run`. After
`start_import_labels_task_run` finishes, all future runs of the machine
learning transform use the new and improved labels and perform a
higher-quality transformation.

By default, `start_ml_labeling_set_generation_task_run` continually
learns from and combines all labels that you upload unless you set
`Replace` to true. If you set `Replace` to true,
`start_import_labels_task_run` deletes and forgets all previously
uploaded labels and learns only from the exact set that you upload.
Replacing labels can be helpful if you realize that you previously
uploaded incorrect labels, and you believe that they are having a
negative effect on your transform quality.

You can check on the status of your task run by calling the
`get_ml_task_run` operation.

### Usage

    glue_start_import_labels_task_run(TransformId, InputS3Path,
      ReplaceAllLabels)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="glue_start_import_labels_task_run_:_TransformId">TransformId</code></td>
<td><p>[required] The unique identifier of the machine learning
transform.</p></td>
</tr>
<tr class="even">
<td><code
id="glue_start_import_labels_task_run_:_InputS3Path">InputS3Path</code></td>
<td><p>[required] The Amazon Simple Storage Service (Amazon S3) path
from where you import the labels.</p></td>
</tr>
<tr class="odd">
<td><code
id="glue_start_import_labels_task_run_:_ReplaceAllLabels">ReplaceAllLabels</code></td>
<td><p>Indicates whether to overwrite your existing labels.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      TaskRunId = "string"
    )

### Request syntax

    svc$start_import_labels_task_run(
      TransformId = "string",
      InputS3Path = "string",
      ReplaceAllLabels = TRUE|FALSE
    )
