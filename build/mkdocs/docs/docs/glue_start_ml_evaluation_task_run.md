<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>glue_start_ml_evaluation_task_run</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Starts a task to estimate the quality of the transform

### Description

Starts a task to estimate the quality of the transform.

When you provide label sets as examples of truth, Glue machine learning
uses some of those examples to learn from them. The rest of the labels
are used as a test to estimate quality.

Returns a unique identifier for the run. You can call `get_ml_task_run`
to get more information about the stats of the `EvaluationTaskRun`.

### Usage

    glue_start_ml_evaluation_task_run(TransformId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="glue_start_ml_evaluation_task_run_:_TransformId">TransformId</code></td>
<td><p>[required] The unique identifier of the machine learning
transform.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      TaskRunId = "string"
    )

### Request syntax

    svc$start_ml_evaluation_task_run(
      TransformId = "string"
    )
