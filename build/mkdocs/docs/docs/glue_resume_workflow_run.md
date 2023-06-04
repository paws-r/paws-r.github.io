<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>glue_resume_workflow_run</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Restarts selected nodes of a previous partially completed workflow run and resumes the workflow run

### Description

Restarts selected nodes of a previous partially completed workflow run
and resumes the workflow run. The selected nodes and all nodes that are
downstream from the selected nodes are run.

### Usage

    glue_resume_workflow_run(Name, RunId, NodeIds)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="glue_resume_workflow_run_:_Name">Name</code></td>
<td><p>[required] The name of the workflow to resume.</p></td>
</tr>
<tr class="even">
<td><code id="glue_resume_workflow_run_:_RunId">RunId</code></td>
<td><p>[required] The ID of the workflow run to resume.</p></td>
</tr>
<tr class="odd">
<td><code id="glue_resume_workflow_run_:_NodeIds">NodeIds</code></td>
<td><p>[required] A list of the node IDs for the nodes you want to
restart. The nodes that are to be restarted must have a run attempt in
the original run.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      RunId = "string",
      NodeIds = list(
        "string"
      )
    )

### Request syntax

    svc$resume_workflow_run(
      Name = "string",
      RunId = "string",
      NodeIds = list(
        "string"
      )
    )
