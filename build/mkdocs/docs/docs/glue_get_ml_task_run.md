<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>glue_get_ml_task_run</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets details for a specific task run on a machine learning transform

### Description

Gets details for a specific task run on a machine learning transform.
Machine learning task runs are asynchronous tasks that Glue runs on your
behalf as part of various machine learning workflows. You can check the
stats of any task run by calling `get_ml_task_run` with the `TaskRunID`
and its parent transform's `TransformID`.

### Usage

    glue_get_ml_task_run(TransformId, TaskRunId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="glue_get_ml_task_run_:_TransformId">TransformId</code></td>
<td><p>[required] The unique identifier of the machine learning
transform.</p></td>
</tr>
<tr class="even">
<td><code id="glue_get_ml_task_run_:_TaskRunId">TaskRunId</code></td>
<td><p>[required] The unique identifier of the task run.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      TransformId = "string",
      TaskRunId = "string",
      Status = "STARTING"|"RUNNING"|"STOPPING"|"STOPPED"|"SUCCEEDED"|"FAILED"|"TIMEOUT",
      LogGroupName = "string",
      Properties = list(
        TaskType = "EVALUATION"|"LABELING_SET_GENERATION"|"IMPORT_LABELS"|"EXPORT_LABELS"|"FIND_MATCHES",
        ImportLabelsTaskRunProperties = list(
          InputS3Path = "string",
          Replace = TRUE|FALSE
        ),
        ExportLabelsTaskRunProperties = list(
          OutputS3Path = "string"
        ),
        LabelingSetGenerationTaskRunProperties = list(
          OutputS3Path = "string"
        ),
        FindMatchesTaskRunProperties = list(
          JobId = "string",
          JobName = "string",
          JobRunId = "string"
        )
      ),
      ErrorString = "string",
      StartedOn = as.POSIXct(
        "2015-01-01"
      ),
      LastModifiedOn = as.POSIXct(
        "2015-01-01"
      ),
      CompletedOn = as.POSIXct(
        "2015-01-01"
      ),
      ExecutionTime = 123
    )

### Request syntax

    svc$get_ml_task_run(
      TransformId = "string",
      TaskRunId = "string"
    )
