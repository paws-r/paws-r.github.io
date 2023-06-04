<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>glue_delete_workflow</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a workflow

### Description

Deletes a workflow.

### Usage

    glue_delete_workflow(Name)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="glue_delete_workflow_:_Name">Name</code></td>
<td><p>[required] Name of the workflow to be deleted.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Name = "string"
    )

### Request syntax

    svc$delete_workflow(
      Name = "string"
    )
