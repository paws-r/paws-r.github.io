<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>emr_list_notebook_executions</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Provides summaries of all notebook executions

### Description

Provides summaries of all notebook executions. You can filter the list
based on multiple criteria such as status, time range, and editor id.
Returns a maximum of 50 notebook executions and a marker to track the
paging of a longer notebook execution list across multiple
`list_notebook_executions` calls.

### Usage

    emr_list_notebook_executions(EditorId, Status, From, To, Marker,
      ExecutionEngineId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="emr_list_notebook_executions_:_EditorId">EditorId</code></td>
<td><p>The unique ID of the editor associated with the notebook
execution.</p></td>
</tr>
<tr class="even">
<td><code id="emr_list_notebook_executions_:_Status">Status</code></td>
<td><p>The status filter for listing notebook executions.</p>
<ul>
<li><p><code>START_PENDING</code> indicates that the cluster has
received the execution request but execution has not begun.</p></li>
<li><p><code>STARTING</code> indicates that the execution is starting on
the cluster.</p></li>
<li><p><code>RUNNING</code> indicates that the execution is being
processed by the cluster.</p></li>
<li><p><code>FINISHING</code> indicates that execution processing is in
the final stages.</p></li>
<li><p><code>FINISHED</code> indicates that the execution has completed
without error.</p></li>
<li><p><code>FAILING</code> indicates that the execution is failing and
will not finish successfully.</p></li>
<li><p><code>FAILED</code> indicates that the execution failed.</p></li>
<li><p><code>STOP_PENDING</code> indicates that the cluster has received
a <code>stop_notebook_execution</code> request and the stop is
pending.</p></li>
<li><p><code>STOPPING</code> indicates that the cluster is in the
process of stopping the execution as a result of a
<code>stop_notebook_execution</code> request.</p></li>
<li><p><code>STOPPED</code> indicates that the execution stopped because
of a <code>stop_notebook_execution</code> request.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code id="emr_list_notebook_executions_:_From">From</code></td>
<td><p>The beginning of time range filter for listing notebook
executions. The default is the timestamp of 30 days ago.</p></td>
</tr>
<tr class="even">
<td><code id="emr_list_notebook_executions_:_To">To</code></td>
<td><p>The end of time range filter for listing notebook executions. The
default is the current timestamp.</p></td>
</tr>
<tr class="odd">
<td><code id="emr_list_notebook_executions_:_Marker">Marker</code></td>
<td><p>The pagination token, returned by a previous
<code>list_notebook_executions</code> call, that indicates the start of
the list for this <code>list_notebook_executions</code> call.</p></td>
</tr>
<tr class="even">
<td><code
id="emr_list_notebook_executions_:_ExecutionEngineId">ExecutionEngineId</code></td>
<td><p>The unique ID of the execution engine.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      NotebookExecutions = list(
        list(
          NotebookExecutionId = "string",
          EditorId = "string",
          NotebookExecutionName = "string",
          Status = "START_PENDING"|"STARTING"|"RUNNING"|"FINISHING"|"FINISHED"|"FAILING"|"FAILED"|"STOP_PENDING"|"STOPPING"|"STOPPED",
          StartTime = as.POSIXct(
            "2015-01-01"
          ),
          EndTime = as.POSIXct(
            "2015-01-01"
          ),
          NotebookS3Location = list(
            Bucket = "string",
            Key = "string"
          ),
          ExecutionEngineId = "string"
        )
      ),
      Marker = "string"
    )

### Request syntax

    svc$list_notebook_executions(
      EditorId = "string",
      Status = "START_PENDING"|"STARTING"|"RUNNING"|"FINISHING"|"FINISHED"|"FAILING"|"FAILED"|"STOP_PENDING"|"STOPPING"|"STOPPED",
      From = as.POSIXct(
        "2015-01-01"
      ),
      To = as.POSIXct(
        "2015-01-01"
      ),
      Marker = "string",
      ExecutionEngineId = "string"
    )
