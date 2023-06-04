<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>glue_start_export_labels_task_run</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Begins an asynchronous task to export all labeled data for a particular transform

### Description

Begins an asynchronous task to export all labeled data for a particular
transform. This task is the only label-related API call that is not part
of the typical active learning workflow. You typically use
`start_export_labels_task_run` when you want to work with all of your
existing labels at the same time, such as when you want to remove or
change labels that were previously submitted as truth. This API
operation accepts the `TransformId` whose labels you want to export and
an Amazon Simple Storage Service (Amazon S3) path to export the labels
to. The operation returns a `TaskRunId`. You can check on the status of
your task run by calling the `get_ml_task_run` API.

### Usage

    glue_start_export_labels_task_run(TransformId, OutputS3Path)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="glue_start_export_labels_task_run_:_TransformId">TransformId</code></td>
<td><p>[required] The unique identifier of the machine learning
transform.</p></td>
</tr>
<tr class="even">
<td><code
id="glue_start_export_labels_task_run_:_OutputS3Path">OutputS3Path</code></td>
<td><p>[required] The Amazon S3 path where you export the
labels.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      TaskRunId = "string"
    )

### Request syntax

    svc$start_export_labels_task_run(
      TransformId = "string",
      OutputS3Path = "string"
    )
