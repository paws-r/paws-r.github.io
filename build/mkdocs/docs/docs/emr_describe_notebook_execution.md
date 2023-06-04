<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>emr_describe_notebook_execution</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Provides details of a notebook execution

### Description

Provides details of a notebook execution.

### Usage

    emr_describe_notebook_execution(NotebookExecutionId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="emr_describe_notebook_execution_:_NotebookExecutionId">NotebookExecutionId</code></td>
<td><p>[required] The unique identifier of the notebook
execution.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      NotebookExecution = list(
        NotebookExecutionId = "string",
        EditorId = "string",
        ExecutionEngine = list(
          Id = "string",
          Type = "EMR",
          MasterInstanceSecurityGroupId = "string",
          ExecutionRoleArn = "string"
        ),
        NotebookExecutionName = "string",
        NotebookParams = "string",
        Status = "START_PENDING"|"STARTING"|"RUNNING"|"FINISHING"|"FINISHED"|"FAILING"|"FAILED"|"STOP_PENDING"|"STOPPING"|"STOPPED",
        StartTime = as.POSIXct(
          "2015-01-01"
        ),
        EndTime = as.POSIXct(
          "2015-01-01"
        ),
        Arn = "string",
        OutputNotebookURI = "string",
        LastStateChangeReason = "string",
        NotebookInstanceSecurityGroupId = "string",
        Tags = list(
          list(
            Key = "string",
            Value = "string"
          )
        ),
        NotebookS3Location = list(
          Bucket = "string",
          Key = "string"
        ),
        OutputNotebookS3Location = list(
          Bucket = "string",
          Key = "string"
        ),
        OutputNotebookFormat = "HTML",
        EnvironmentVariables = list(
          "string"
        )
      )
    )

### Request syntax

    svc$describe_notebook_execution(
      NotebookExecutionId = "string"
    )
