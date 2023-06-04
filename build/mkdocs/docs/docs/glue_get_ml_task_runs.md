<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>glue_get_ml_task_runs</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets a list of runs for a machine learning transform

### Description

Gets a list of runs for a machine learning transform. Machine learning
task runs are asynchronous tasks that Glue runs on your behalf as part
of various machine learning workflows. You can get a sortable,
filterable list of machine learning task runs by calling
`get_ml_task_runs` with their parent transform's `TransformID` and other
optional parameters as documented in this section.

This operation returns a list of historic runs and must be paginated.

### Usage

    glue_get_ml_task_runs(TransformId, NextToken, MaxResults, Filter, Sort)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="glue_get_ml_task_runs_:_TransformId">TransformId</code></td>
<td><p>[required] The unique identifier of the machine learning
transform.</p></td>
</tr>
<tr class="even">
<td><code id="glue_get_ml_task_runs_:_NextToken">NextToken</code></td>
<td><p>A token for pagination of the results. The default is
empty.</p></td>
</tr>
<tr class="odd">
<td><code id="glue_get_ml_task_runs_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to return.</p></td>
</tr>
<tr class="even">
<td><code id="glue_get_ml_task_runs_:_Filter">Filter</code></td>
<td><p>The filter criteria, in the <code>TaskRunFilterCriteria</code>
structure, for the task run.</p></td>
</tr>
<tr class="odd">
<td><code id="glue_get_ml_task_runs_:_Sort">Sort</code></td>
<td><p>The sorting criteria, in the <code>TaskRunSortCriteria</code>
structure, for the task run.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      TaskRuns = list(
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
      ),
      NextToken = "string"
    )

### Request syntax

    svc$get_ml_task_runs(
      TransformId = "string",
      NextToken = "string",
      MaxResults = 123,
      Filter = list(
        TaskRunType = "EVALUATION"|"LABELING_SET_GENERATION"|"IMPORT_LABELS"|"EXPORT_LABELS"|"FIND_MATCHES",
        Status = "STARTING"|"RUNNING"|"STOPPING"|"STOPPED"|"SUCCEEDED"|"FAILED"|"TIMEOUT",
        StartedBefore = as.POSIXct(
          "2015-01-01"
        ),
        StartedAfter = as.POSIXct(
          "2015-01-01"
        )
      ),
      Sort = list(
        Column = "TASK_RUN_TYPE"|"STATUS"|"STARTED",
        SortDirection = "DESCENDING"|"ASCENDING"
      )
    )
