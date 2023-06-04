<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>emr_stop_notebook_execution</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Stops a notebook execution

### Description

Stops a notebook execution.

### Usage

    emr_stop_notebook_execution(NotebookExecutionId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="emr_stop_notebook_execution_:_NotebookExecutionId">NotebookExecutionId</code></td>
<td><p>[required] The unique identifier of the notebook
execution.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$stop_notebook_execution(
      NotebookExecutionId = "string"
    )
