<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>glue_stop_workflow_run</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Stops the execution of the specified workflow run

### Description

Stops the execution of the specified workflow run.

### Usage

    glue_stop_workflow_run(Name, RunId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="glue_stop_workflow_run_:_Name">Name</code></td>
<td><p>[required] The name of the workflow to stop.</p></td>
</tr>
<tr class="even">
<td><code id="glue_stop_workflow_run_:_RunId">RunId</code></td>
<td><p>[required] The ID of the workflow run to stop.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$stop_workflow_run(
      Name = "string",
      RunId = "string"
    )
