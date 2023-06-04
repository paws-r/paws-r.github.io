<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>glue_start_workflow_run</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Starts a new run of the specified workflow

### Description

Starts a new run of the specified workflow.

### Usage

    glue_start_workflow_run(Name, RunProperties)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="glue_start_workflow_run_:_Name">Name</code></td>
<td><p>[required] The name of the workflow to start.</p></td>
</tr>
<tr class="even">
<td><code
id="glue_start_workflow_run_:_RunProperties">RunProperties</code></td>
<td><p>The workflow run properties for the new workflow run.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      RunId = "string"
    )

### Request syntax

    svc$start_workflow_run(
      Name = "string",
      RunProperties = list(
        "string"
      )
    )
