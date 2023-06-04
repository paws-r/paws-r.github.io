<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>glue_get_workflow_run_properties</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves the workflow run properties which were set during the run

### Description

Retrieves the workflow run properties which were set during the run.

### Usage

    glue_get_workflow_run_properties(Name, RunId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="glue_get_workflow_run_properties_:_Name">Name</code></td>
<td><p>[required] Name of the workflow which was run.</p></td>
</tr>
<tr class="even">
<td><code
id="glue_get_workflow_run_properties_:_RunId">RunId</code></td>
<td><p>[required] The ID of the workflow run whose run properties should
be returned.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      RunProperties = list(
        "string"
      )
    )

### Request syntax

    svc$get_workflow_run_properties(
      Name = "string",
      RunId = "string"
    )
